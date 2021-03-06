## This file is part of Invenio.
## Copyright (C) 2012 CERN.
##
## Invenio is free software; you can redistribute it and/or
## modify it under the terms of the GNU General Public License as
## published by the Free Software Foundation; either version 2 of the
## License, or (at your option) any later version.
##
## Invenio is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
## General Public License for more details.
##
## You should have received a copy of the GNU General Public License
## along with Invenio; if not, write to the Free Software Foundation, Inc.,
## 59 Temple Place, Suite 330, Boston, MA 02111-1307, USA.

__revision__ = "$Id$"


import os
import re

from invenio.config import CFG_SITE_NAME, \
     CFG_SITE_URL, \
     CFG_SITE_SUPPORT_EMAIL, \
     CFG_SITE_RECORD

from invenio.websubmit_config import CFG_WEBSUBMIT_COPY_MAILS_TO_ADMIN
from invenio.websubmit_functions.Shared_Functions import get_nice_bibsched_related_message, ParamFromFile
from invenio.mailutils import scheduled_send_email
from invenio.bibtask import bibtask_allocate_sequenceid

def Mail_Submitter(parameters, curdir, form, user_info=None):
    """
    This function send an email to the submitter to warn him the
    document he has just submitted has been correctly received.

    Parameters:

      * titleFile: Name of the file containing the title of the
                   document

      * emailFile: Name of the file containing the email of the
                   submitter of the document

      * status: Depending on the value of this parameter, the function
                adds an additional text to the email.  This parameter
                can be one of: ADDED: The file has been integrated in
                the database.  APPROVAL: The file has been sent for
                approval to a referee.  or can stay empty.

      * edsrn: Name of the file containing the reference of the
               document

      * newrnin: Name of the file containing the 2nd reference of the
                 document (if any)
    """

    FROMADDR = '%s Submission Engine <%s>' % (CFG_SITE_NAME,CFG_SITE_SUPPORT_EMAIL)
    sequence_id = bibtask_allocate_sequenceid(curdir)
    # retrieve report number
    edsrn = parameters['edsrn']
    newrnin = parameters['newrnin']
    fp = open("%s/%s" % (curdir,edsrn),"r")
    rn = fp.read()
    fp.close()
    rn = re.sub("[\n\r]+","",rn)

    if newrnin != "" and os.path.exists("%s/%s" % (curdir,newrnin)):
        fp = open("%s/%s" % (curdir,newrnin),"r")
        additional_rn = fp.read()
        fp.close()
        additional_rn = re.sub("[\n\r]+","",additional_rn)
        fullrn = "%s and %s" % (additional_rn,rn)
    else:
        fullrn = rn
    fullrn = fullrn.replace("\n"," ")

    # The title is read from the file specified by 'titlefile'
    try:
        fp = open("%s/%s" % (curdir,parameters['titleFile']),"r")
        m_title = fp.read().replace("\n"," ")
        fp.close()
    except:
        m_title = "-"

    # The submitters email address is read from the file specified by 'emailFile'
    try:
        fp = open("%s/%s" % (curdir,parameters['emailFile']),"r")
        m_recipient = fp.read().replace ("\n"," ")
        fp.close()
    except:
        m_recipient = ""

    # create email body
    email_txt = "\nThe blog %s with title '%s'\nhas been correctly received\n\n" % (fullrn, m_title)
    # The user is either informed that the document has been added to the database, or sent for approval
    if parameters['status'] == "APPROVAL":
        email_txt =  email_txt + "An email has been sent to the referee. You will be warned by email as soon as the referee takes his/her decision regarding your blog.\n\n"
    elif parameters['status'] == "ADDED":
        email_txt = email_txt + """It will be soon added to the BlogForever repository.\n\nOnce inserted, it will be available at this URL: <%s/%s/%s>\n \
If you detect an error please let us know by sending an email to %s.\n\n """ % (CFG_SITE_URL,CFG_SITE_RECORD,sysno,CFG_SITE_SUPPORT_EMAIL)
    email_txt += get_nice_bibsched_related_message(curdir)
    email_txt = email_txt + "\nThank you for using %s Submission Interface.\n" % CFG_SITE_NAME

    ## send the mail, if there are any recipients or copy to admin
    if m_recipient or CFG_WEBSUBMIT_COPY_MAILS_TO_ADMIN:
        scheduled_send_email(FROMADDR, m_recipient.strip(), "%s: Blog received" % fullrn, email_txt,
                             copy_to_admin=CFG_WEBSUBMIT_COPY_MAILS_TO_ADMIN,
                             other_bibtasklet_arguments=['-I', str(sequence_id)])

    return ""

