<span style="font-weight:bold;text-transform:capitalize;">|~SELECT CASE WHEN EXISTS(Select tblUserTable.UserId from tblUserTable join tblTrackUser on tblUserTable.UserCodeID = tblTrackUser.UserCodeID where LoginDate >= Cast(getDate() as date) and LogOutDate = '1/1/1900' and tblUserTable.UserID <> 'autorun' group by UserID) 
                        THEN 
                        '<span style="display:flex;align-items:center;">Users Logged In: ' END AS FieldData, 'AAAA' AS SortOrder 
UNION ALL 
SELECT CASE WHEN EXISTS ( Select tblUserTable.UserId from tblUserTable join tblTrackUser on tblUserTable.UserCodeID = tblTrackUser.UserCodeID where LoginDate >= Cast(getDate() as date) and LogOutDate = '1/1/1900' and tblUserTable.UserID <> 'autorun' group by UserID) 
                            THEN 
                            '<img border="0" src="images/green-square.gif" width="15" height="15"/>' +  tblUserTable.UserId + ' ' END 
                            AS FieldData, 'BBBB' AS SortOrder 
							from tblUserTable
                            join tblTrackUser on tblUserTable.UserCodeID = tblTrackUser.UserCodeID where LoginDate >= Cast(getDate() as date) and LogOutDate = '1/1/1900' and tblUserTable.UserID <> 'autorun' group by UserID 
UNION ALL 
SELECT CASE WHEN EXISTS( Select tblUserTable.UserId from tblUserTable join tblTrackUser on tblUserTable.UserCodeID = tblTrackUser.UserCodeID where LoginDate >= Cast(getDate() as date) and LogOutDate = '1/1/1900' and tblUserTable.UserID <> 'autorun' group by UserID) 
                        THEN '</span>' END AS FieldData, 'ZZZZ' AS SortOrder 
                        ORDER BY SortOrder~|</span>


 