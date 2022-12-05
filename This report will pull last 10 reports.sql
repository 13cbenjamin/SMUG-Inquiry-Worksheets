|~SELECT CASE WHEN EXISTS(Select Top 1 tblReportName.ReportNameOnMenu
                        from tblReportName where tblReportName.LastRunDate >= CAST(GetDate() as Date))
                        THEN 
                        '<table width=auto border=1 cellpadding=4 style="text-align:center;vertical-align:middle;">
                            <caption>Last 10 Reports Ran Today</caption>
                            <thead style="background-color:#333;color:white;font-size:0.875rem;text-transform:uppercase;letter-spacing:2%;">
                                <tr>
                                    <th>Report Name</th>
                                    <th>User Who Last Ran</th>
                                    <th>Last Ran Date/Time</th>
                                </tr> 
                            </thead>' END AS FieldData, 'AAAA' AS SortOrder 
UNION  ALL 
SELECT CASE WHEN EXISTS ( Select Top 1
                            tblReportName.ReportNameOnMenu from tblReportName where LastRunDate >= CAST(GetDate() as Date))
                            THEN 
                            '<tr> 
                            <td align=left>' + tblReportName.ReportNameOnMenu + '</td>' + 
                            '<td align=left>' + tblUserTable.FirstName + '</td>' + 
                            '<td align=left>' +CONVERT(varchar,tblReportName.LastRunDate) + '</td>'+
                            '</tr>' END AS FieldData, 'BBBB' AS SortOrder 
                            from tblReportName
                            Join tblUserTable on tblreportname.LastRunUserCodeID = tblUserTable.UserCodeID
                            where LastRunDate >= CAST(GetDate() as Date)
UNION ALL 
SELECT CASE WHEN EXISTS( Select Top 1 tblReportName.ReportNameOnMenu
                        from tblReportName)
                        THEN '</table>' END AS FieldData, 'ZZZZ' AS SortOrder 
                        ORDER BY SortOrder~|