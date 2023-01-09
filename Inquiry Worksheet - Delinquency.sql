|~SELECT CASE 
WHEN (dbo.udfCaseDelinqAmt_NoBase({CaseID}) >  (2 * dbo.udfGetMonthlyPmt({CaseID}, GETDATE())))  THEN 
'<table align="center" border="1" cellpadding="1" cellspacing="1" class="table table-bordered" id="inquiry_case_delinq" style="width:250px;"> 
 <caption style="color: red; font-weight: bold"> 
  Case is Delinquent</caption> 
 <thead> 
  <tr> 
   <td scope="col"> 
    Delinquency Amount</td> 
   <td scope="col" style="font-weight: bold">$' + 
    Convert(varchar, (SELECT ISNULL(dbo.udfCaseDelinqAmt({CaseID}), 0)), 1) + '</td> 
  </tr> 
 </thead> 
 <tbody> 
  <tr> 
   <td> 
    Months Delinquent</td> 
   <td>' + 
     Convert(varchar, (SELECT ISNULL(dbo.udfGetMonthsDelinq({CaseID}), 0)), 1) + '</td> 
  </tr> 
  <tr> 
   <td> 
    Last Receipt Date</td> 
   <td>' + 
     Convert(Varchar, ISNULL(dbo.udfGetLastRcptDate({CaseID}), 0), 101) + '</td> 
  </tr> 
  <tr> 
   <td> 
    Last Delinquency Letter Sent</td> 
   <td>' + Convert(VarChar, ISNULL(dbo.udfGetCaseDate({CaseID},4), 0), 101) + 
    '</td> 
  </tr> 
 </tbody> 
</table>' ELSE '' END as FieldData~|
