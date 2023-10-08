function Write-Logo {
    $counter = 0
    $Logo = '
        ,.=:!!t3Z3z.,                  \
       :tt:::tt333EE3                  \
       Et:::ztt33EEEL\ ''@Ee.,      .., \
      ;tt:::tt333EE7\ ;EEEEEEttttt33#   \
     :Et:::zt333EEQ.\ $EEEEEttttt33QL   \
     it::::tt333EEF\ @EEEEEEttttt33F    \
    ;3=*^```"*4EEV\ :EEEEEEttttt33@.    \
    ,.=::::!t=., `\ @EEEEEEtttz33QF     \
   ;::::::::zt33)\   "4EEEtttji3P*      \
  :t::::::::tt33.\:Z3z..  `` ,..g.      \
  i::::::::zt33F\ AEEEtttt::::ztF       \
 ;:::::::::t33V\ ;EEEttttt::::t3        \
 E::::::::zt33L\ @EEEtttt::::z3F        \
{3=*^```"*4E3)\ ;EEEtttt:::::tZ`        \
             `\ :EEEEtttt::::z7         \
                 "VEzjt:;;z>*`         \

    '
#You can grab the contents from a file with Get-Content too if you want.
    $RedArray = (1,2,3,5,7,9,11)
    $GreenArray = (4,6,8,10,12,14,16)
    $CyanArray = (13,15,17,19,21,23,25,27)
    $YellowArray = (18,20,22,24,26,28,29)

    ForEach($Line in $Logo){
        $Subsection = ($Line.Split('\'))
        ForEach($ColourSection in $Subsection){

            $counter = $counter + 1
    
            If($RedArray.Contains($counter)){Write-Host($ColourSection) -NoNewline -ForegroundColor Red}
            ElseIf($GreenArray.Contains($counter)){Write-Host($ColourSection) -NoNewline -ForegroundColor Green}
            ElseIf($CyanArray.Contains($counter)){Write-Host($ColourSection) -NoNewline -ForegroundColor Cyan}
            ElseIf($YellowArray.Contains($counter)){Write-Host($ColourSection) -NoNewline -ForegroundColor Yellow}
            Else{Write-Host($ColourSection) -NoNewline}
        }
    }
}
