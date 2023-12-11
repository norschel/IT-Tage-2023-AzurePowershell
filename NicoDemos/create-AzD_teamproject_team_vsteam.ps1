Connect-ADO
Add-VSTeam -Name IT-Tage-DemoTeam -Description "Best team ever" -ProjectName demos            
$user = Get-VSTeamUser | ? DisplayName -eq 'Nico Orschel'                                     
$group = Get-VSTeamGroup | ? DisplayName -eq 'IT-Tage-DemoTeam'                               
Add-VSTeamMembership -MemberDescriptor $user.Descriptor -ContainerDescriptor $group.Descriptor