**Scenario 1**

Good afternoon Sarah,

Thank you for contacting Cargas Support. It looks like you having some issues with your export script. Looking over it, the issue appears to be in the 
"formatted_date = record['date'].strftime('%Y-%m-%d')" 
line. Specifically, it looks like at least one record has a missing value, showing as (None). This line expects each record to have some date value, so any records without that date are causing issues. 

The good news is, we can fix it. All we need to do is put in some logic to check if the date value is "None", and then continue. Here's how to make that change:

Remove:
  formatted_date = record['date'].strftime('%Y-%m-%d')

Add:
if record['date']:
    formatted_date = record['date'].strftime('%Y-%m-%d')
else:
    formatted_date = ''

And that should do it! After you make this change, please try running the script again and let me know if you are getting any other errors or have any other questions. Have a great rest of your day!

Regards,
David Keshel
Technical Support Engineer
**Scenario 2**

Good morning James,

Thank you for contacting Cargas Support. It looks like you are trying to automate a monthly process. I am happy to help with some automation. The good news is, we should be able to run this report and email it to whomever you want. As far as the formatting and calculations, I will need a bit more information on what you're doing before I can be sure we can do it all. If you could outline the steps you are taking each month, that should help me figure out if it's doable within the product. 

Then, after we figure out how much we can automate, we can run it a few times and automate sending it to you for review. From there, if it's exactly what your boss wants, we can start sending it to him (or both of you). If not, we can just send it to you to make any manual adjustments we couldn't do with automation.

If all of that sounds good, just send over a step by step instructions on what you do each month, and I will review to see how much is doable. Thank you for your help with this, and I hope to hear from you soon!

Regards,
David Keshel
Technical Support Engineer

**Scenario 3**

Good afternoon Maria,

Thank you for contacting Cargas Support. I see you have some questions about discrepancies between a report from our system and some manual calculations. As I'm reviewing the issue, there appears to be a difference in how both of us are calculating the total amount. For example, the report is set up to only include invoices that are marked as "completed", and leave out any marked as "pending", "processing", or "cancelled". I believe this is different from how you did your totals. Now, I am happy to make any adjustments to this report so that it's showing you exactly what you need. With that in mind, if you could answer a few questions on procedure, I can make adjustments to the report.

1. Do we want to include all statuses in the report? I assume we don't want the "Cancelled" ones, but what about the Pending, Processing, and Completed?
2. If we are excluding Pending or Processing, when do we want to pull those in? If we go across the month, an order's date may be in a previous month, while it's marked as completed in the next. Do we need to do a look back for previous months to make sure we are picking up anything that may have taken longer to process?

If we can be sure the report is pulling exactly what you need, we shouldn't run into any more discrepancies. Please let me know what to change, and I will be happy to assist. Have a great day!


Regards,
David Keshel
Technical Support Engineer


**Scenario 4**

Good morning Jennifer,

Thank you for contacting Cargas Support. It looks like we're having some issues with importing customer data into the system. I have checked the logs on our end, and I was able to find why you're missing those 50 users. For all of them, they either had an invalid or duplicate email, which stopped them from importing. I'm including the error logs of the records that did not import, so you are able to review, update, and re-import as needed.

The other issue is that we didn't send that error log back to your CRM. I am going to need a bit of information to make sure we get this resolved. Can you send over any messages we did provide? I want to narrow down where the issue is, and being able to read exactly what we did send your CRM should help. If we said all 200 records imported successfully when they didn't, I will be able to review our system to see why we mislabeled those logs. But, if you didn't get any message back or an imcomplete message back, that may point to a different issue. Thank you for your assistance on getting this sorted out, and as soon as I can review what we did send to your CRM, I will follow up with more information. 


Regards,
David Keshel
Technical Support Engineer

**Scenario 5**


Good afternoon Robert,

Thank you for contacting Cargas Support. I see you have some questions on reporting that looks off. It's hard to say exactly what may be wrong without examples, but I did take a look into our system updates recently and have a possible idea. Just recently, we made an update that can affect how we can records will null values. I'm sorry if this is causing issues, but I will help review and update your reports to make sure they are showing you what you need. Now, I can't say this is definitey the issue here, but I am happy to review to make sure it is running like you need. 

With that in mind, if a record has a null value, do we want to include it in the total, or not? As an example, I have identified record 1234 as having a null value where we're counting. How do you want this record to be considered? I appreciate any help you can provide on getting this sorted, and as soon as I know how we need to handle this, I will make any changes needed to your reporting. 


Regards,
David Keshel
Technical Support Engineer


