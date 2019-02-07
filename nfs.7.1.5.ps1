#region XAML window definition
$xaml = @'
<Window
   xmlns="http://schemas.microsoft.com/winfx/2006/xaml/presentation"
   xmlns:x="http://schemas.microsoft.com/winfx/2006/xaml"
   MinWidth="200"
   Width ="Auto"
   SizeToContent="WidthAndHeight"
   Title="NFS Manager for Windows Servers v7.1.5"
   Topmost="False">
    <Grid Margin="10,40,10,10">
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="*"/>
        </Grid.ColumnDefinitions>
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="*"/>
        </Grid.RowDefinitions>
        
        <Rectangle Grid.Row="1" Grid.ColumnSpan="2"  Fill="WhiteSmoke" />
        <Rectangle Grid.Row="2" Grid.ColumnSpan="2"  Fill="WhiteSmoke" />
        <Rectangle Grid.Row="5" Grid.ColumnSpan="2"  Fill="WhiteSmoke" />
        <Rectangle Grid.Row="6" Grid.ColumnSpan="2"  Fill="WhiteSmoke" />
        <Rectangle Grid.Row="9" Grid.ColumnSpan="2"  Fill="WhiteSmoke" />
        <Rectangle Grid.Row="10" Grid.ColumnSpan="2"  Fill="WhiteSmoke" />

        <TextBlock Grid.Column="0" Grid.Row="0" Grid.ColumnSpan="2" Margin="5,5,5,15" FontWeight="Bold" FontSize="14">Windows NFS Management Details:</TextBlock>
        <TextBlock Grid.Column="0" Grid.Row="1" Margin="5">NFS Features</TextBlock>
        <TextBlock Grid.Column="0" Grid.Row="3" Margin="5">NFS Services</TextBlock>
        <TextBlock Grid.Column="0" Grid.Row="5" Margin="5">Windows Firewall</TextBlock>
        <TextBlock Grid.Column="0" Grid.Row="7" Margin="5">NFS Exports</TextBlock>
        <TextBlock Grid.Column="0" Grid.Row="9" Margin="5">NFS Shares</TextBlock>
        
        <ListView Grid.Column="1" Grid.Row="1" Name="view_Feature" Margin="5">
            <ListView.View>
                <GridView>
                    <GridViewColumn Header="Select">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <CheckBox IsChecked="{Binding Select}" />
                            </DataTemplate> 
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>
                    <GridViewColumn Width="Auto" Header="Display Name" DisplayMemberBinding="{Binding DisplayName}"/>
                    <GridViewColumn Width="Auto" Header="Name"  DisplayMemberBinding="{Binding Name}"/>
                    <GridViewColumn Width="Auto" Header="InstallState" DisplayMemberBinding="{Binding InstallState}"/>
                    <GridViewColumn Width="Auto" Header="Installed" DisplayMemberBinding="{Binding Installed}"/>               
                </GridView>
            </ListView.View>
        </ListView>
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Grid.Column="1" Grid.Row="2"  Margin="0,10,0,0">
            <Button Name="btn_RemoveWindowsFeatures" MinWidth="80" Height="22" Margin="5">Remove NFS Features</Button>
            <Button Name="btn_AddWindowsFeatures" MinWidth="80" Height="22" Margin="5">Add NFS Features</Button>
        </StackPanel>

        <ListView Grid.Column="1" Grid.Row="3" Name="view_Service" Margin="5">
            <ListView.View>
                <GridView>
                    <GridViewColumn Header="Select">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <CheckBox IsChecked="{Binding Select}" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>
                    <GridViewColumn Width="Auto" Header="Status" DisplayMemberBinding="{Binding Status}"/>
                    <GridViewColumn Width="Auto" Header="Name" DisplayMemberBinding="{Binding Name}"/>
                    <GridViewColumn Width="Auto" Header="Display Name" DisplayMemberBinding="{Binding DisplayName}"/>
                </GridView>
            </ListView.View>
        </ListView>
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Grid.Column="1" Grid.Row="4"  Margin="0,10,0,0">
            <Button Name="btn_stopService" MinWidth="80" Height="22" Margin="5">Stop NFS Service</Button>
            <Button Name="btn_startService" MinWidth="80" Height="22" Margin="5">(Re)Start NFS Service</Button>
        </StackPanel>

<Grid Grid.Column="1" Grid.Row="5">
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto"/>
            <ColumnDefinition Width="*"/>
        </Grid.ColumnDefinitions>
        <Grid.RowDefinitions>
            <RowDefinition Height="Auto"/>
            <RowDefinition Height="Auto"/>
        </Grid.RowDefinitions>
        
              <ListView Grid.Column="0" Grid.Row="0" Name="view_FirewallProfiles" Margin="5">
            <ListView.View>
                <GridView>
                    <GridViewColumn Header="Select">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <CheckBox IsChecked="{Binding select}" />
                            </DataTemplate> 
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>
                    <GridViewColumn Width="Auto" Header="Display Name" DisplayMemberBinding="{Binding Name}"/> 
                    <GridViewColumn Width="Auto" Header="Enabled" DisplayMemberBinding="{Binding Enabled}"/>    
                </GridView>
             </ListView.View>
           </ListView>
           
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Grid.Column="0" Grid.Row="1"  Margin="0,10,0,0">
            <Button Name="btn_disableProfile" MinWidth="80" Height="22" Margin="5">Disable Profile</Button>
            <Button Name="btn_enableProfile" MinWidth="80" Height="22" Margin="5">Enable Profile</Button>
        </StackPanel> 
        
       <ListView Grid.Column="1" Grid.Row="0" Name="view_FirewallRules" Margin="5">
            <ListView.View>
                <GridView>
                    <GridViewColumn Header="Select">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <CheckBox IsChecked="{Binding Select}" />
                            </DataTemplate> 
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>
                    <GridViewColumn Width="Auto" Header="Display Name" DisplayMemberBinding="{Binding DisplayName}"/>
                    <GridViewColumn Width="0" Header="Name" DisplayMemberBinding="{Binding Name}"  />
                    <GridViewColumn Width="Auto" Header="Enabled" DisplayMemberBinding="{Binding Enabled}"/>
                </GridView>
             </ListView.View>
           </ListView>
           
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Grid.Column="1" Grid.Row="1"  Margin="0,10,0,0">
            <Button Name="btn_disableRule" MinWidth="80" Height="22" Margin="5">Disable Rule</Button>
            <Button Name="btn_enableRule" MinWidth="80" Height="22" Margin="5">Enable Rule</Button>
        </StackPanel>
        
      </Grid>
        <ListView Grid.Column="1" Grid.Row="7" Name="view_Export" Margin="5">
            <ListView.View>
                <GridView>
                <GridViewColumn Header="Select">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <CheckBox IsChecked="{Binding Select}" />
                            </DataTemplate> 
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>
                    <GridViewColumn Width="Auto" Header="Name" DisplayMemberBinding="{Binding Name}"/> 
                    <GridViewColumn Width="Auto" Header="Path" DisplayMemberBinding="{Binding Path}"/>
                    <GridViewColumn Width="Auto" Header="IsOnLine" DisplayMemberBinding="{Binding IsOnline}"/>
                     <GridViewColumn Width="Auto" Header="Unmapped User Access" DisplayMemberBinding="{Binding unmappedUserAccess}"/>
                     <GridViewColumn Width="Auto" Header="Server" DisplayMemberBinding="{Binding NetworkName}"/>
                </GridView>
            </ListView.View>
        </ListView>
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Grid.Column="1" Grid.Row="8"  Margin="0,10,0,0">
            <Button Name="btn_RemoveNfsExport" MinWidth="80" Height="22" Margin="5">Remove NFS Export</Button>
            <Button Name="btn_AddNfsExport" MinWidth="80" Height="22" Margin="5">Add NFS Export</Button>
        </StackPanel>

        <ListView Grid.Column="1" Grid.Row="9" Name="view_Share" Margin="5">
            <ListView.View>
                <GridView>
                    <GridViewColumn Header="Select">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <CheckBox IsChecked="{Binding Select}" />
                            </DataTemplate> 
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>
                    <GridViewColumn Width="Auto" Header="Name" DisplayMemberBinding="{Binding Name}"/>
                    <GridViewColumn Width="Auto" Header="Provider Name" DisplayMemberBinding="{Binding ProviderName}"/>
                    <GridViewColumn Width="Auto" Header="File System" DisplayMemberBinding="{Binding filesystem}"/>
                </GridView>
            </ListView.View>
        </ListView>
        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" Grid.Column="1" Grid.Row="10"  Margin="0,10,0,0">
               <Button Name="btn_removeNfsShare" MinWidth="80" Height="22" Margin="5">Remove NFS Share</Button>
               <Button Name="btn_addNfsShare" MinWidth="80" Height="22" Margin="5">Add NFS Share</Button>
         </StackPanel>

        <StackPanel Orientation="Horizontal" HorizontalAlignment="Right" VerticalAlignment="Bottom" Margin="0,10,0,0" Grid.Row="11" Grid.ColumnSpan="2">
            <TextBlock Name="lbl_prerequisites" Margin="5">Prerequisites</TextBlock>
            <Button Name="btn_Exit" MinWidth="80" Height="22" Margin="5">Exit</Button>
        </StackPanel>
    </Grid>
</Window>
'@
#endregion

#region functions
#region add share
function get-firstavailableDriveLetter{
  $alldrives=@();
  67..90|foreach-object{$alldrives+=[char]$_};
  return $alldrives | Where { !(get-psdrive -Name $_ -ErrorAction SilentlyContinue) } | select -First 1;
  return;
}
function set-newnfsshare {
  $clientservice=get-service -name 'NfsClnt' -ErrorAction SilentlyContinue
  if(!($clientservice)){set-message -message "The NFS-Client service is not installed`nInstall it using the NFS Features and try again!" -icon Information; return}
  if($clientservice.Status -ne 'Running'){set-message -message "The NFS-Client service is not running.`nStart it using NFS Services and try again!" -icon Information;return}
  $xaml = @'
<Window
 xmlns='http://schemas.microsoft.com/winfx/2006/xaml/presentation'
 xmlns:x='http://schemas.microsoft.com/winfx/2006/xaml'
 MinWidth="30"
 Width ="Auto"
 SizeToContent="WidthAndHeight"
 Title='Mount NFS Export'
 Topmost="True"
 >
        <Grid>
            <Grid.RowDefinitions>
            <RowDefinition Height="Auto" />
            <RowDefinition Height="Auto" />
                <RowDefinition Height="Auto" />
                <RowDefinition Height="Auto" />
            </Grid.RowDefinitions>
        <Grid.ColumnDefinitions>
            <ColumnDefinition Width="Auto" />
            <ColumnDefinition Width="Auto" />
        </Grid.ColumnDefinitions>
        <TextBlock Margin="5" Grid.Row="0" Grid.Column="0">Remote NFS Server:</TextBlock>
        <TextBlock Margin="5" Grid.Row="1" Grid.Column="0">Select NFS Export:</TextBlock>
        <TextBlock Margin="5" Grid.Row="2" Grid.Column="0">NFS Share:</TextBlock>
            
        <StackPanel Orientation="Horizontal" Grid.Row="0" Grid.Column="1" HorizontalAlignment="Left">
            <TextBox Name="txt_serverName" Margin="5" Width="250" Height="22" />
            <Button Name='btn_checkNfsShares' HorizontalAlignment="Left" MinWidth="80" Margin="3" Content="Find nfs Shares" />
        </StackPanel>

        <ListView Grid.Row="1" Grid.Column="1" Name="View1" Margin="5">
                <ListView.View>
                    <GridView>
                    <GridViewColumn Header="Mount">
                        <GridViewColumn.CellTemplate>
                            <DataTemplate>
                                <RadioButton IsChecked="{Binding Mount}" GroupName="choice" />
                            </DataTemplate>
                        </GridViewColumn.CellTemplate>
                    </GridViewColumn>

                    <GridViewColumn Width="Auto" Header="Name" DisplayMemberBinding="{Binding Name}"/>
                    <GridViewColumn Width="Auto" Header="Path" DisplayMemberBinding="{Binding Path}"/>
                    <GridViewColumn Width="Auto" Header="PSComputername" DisplayMemberBinding="{Binding PSComputername}"/>
                </GridView>
                </ListView.View>
            </ListView>
        <StackPanel Orientation="Horizontal" Grid.Row="2" Grid.Column="1" HorizontalAlignment="Left">
            <TextBox Name="txt_exportName" Margin="5" Width="250" Height="22" />
            <Button Name='btn_getshare' HorizontalAlignment="Left" MinWidth="80" Margin="3" Content="Get Selected nfs Share" />
        </StackPanel>
        <StackPanel Orientation="Horizontal" Grid.Row="3" Grid.Column="1" HorizontalAlignment="Right">
                <Button Name='btn_mountExport' HorizontalAlignment="Right" MinWidth="80" Margin="3" Content="Mount" />
                <Button Name='btn_close' HorizontalAlignment="Right" MinWidth="80" Margin="3" Content="Close" />
            </StackPanel>
            
        </Grid>
</Window>
'@;  $window1 = Convert-XAMLtoWindow -XAML $xaml
  $window1.add_Loaded(
  {
      $iconpath = "$(Split-Path -Path (get-module cloudisticsapimodule).path -Parent)\cldtx.ico"
    if(Test-Path -Path $iconpath){$window.Icon = $iconpath}
  }
  )

  $window1.btn_close.add_Click(
    {
      $window1.DialogResult = $false;
    }
  )

  $window1.btn_checkNfsShares.add_Click(
    {
      try{
        $servername = $window1.txt_serverName.Text;
        $index=$null
        try{
          $cim = New-CimSession -ComputerName $servername -ErrorAction stop;
        }catch{
          set-trustedhosts -action set -servername $servername
          $index1='reset'
          $cim = New-CimSession -ComputerName $servername -ErrorAction stop;
        }
        $exports = [array](Get-NfsShare -CimSession $cim -ErrorAction stop| select-object @{n='Mount';e={$false}},Name,Path,PsComputername);
        $window1.View1.ItemsSource = $exports;
      }catch{
        $window1.View1.ItemsSource = $null;
      set-message -message "No exports could be retrieved from server`n$($servername)`nCheck the server information`nTry entering the export share name!"};
      if($index1){set-trustedhosts -action reset}
    }

  );

  $window1.btn_getshare.add_Click(
    {
      $export=$null;
      #$window1.View1.Items[0].Mount;
      foreach ($item in $window1.View1.Items){
        if($item.Mount){$export = $item;continue}
        else{return}
      }
      if($export){$window1.txt_exportName.Text = $export.Name;}
    }
  )

  $window1.btn_mountExport.add_Click(
    {
      $mountDrive = get-firstavailableDriveLetter;
      $exportpath = "\\$($window1.txt_serverName.Text.Trim())\$(($window1.txt_exportName.Text).Trim())";
      $reply = set-message -message "Mounting nfs export $($exportpath) as volume $($mountdrive):\`nDo you want to contine?" -title 'nfs mount' -buttons YesNo;
      if($reply -eq 'No'){return};
      $powershellpath = 'C:\Windows\System32\WindowsPowershell\v1.0\powershell.exe';
      start-process -FilePath $powershellpath -ArgumentList "New-PSDrive -Name '$($mountdrive)' -PSProvider FileSystem -Root $($exportpath) -Persist" -Verb runas -Wait -WindowStyle Hidden;
      try{
        invoke-item "$($mountDrive):\" -ErrorAction stop;
      }catch{set-message -message "Error!`n$($_.Exception.Message)" -icon Error};
    }
  )
  $null = Show-WPFWindow -Window $window1;

}
#endregion

function Show-WPFWindow {
  <#
      .Synopsis
      Allows displaying a window containing a XAML GUI element
  #>
  param
  (
    [Parameter(Mandatory=$true)][Windows.Window]$Window
  )
  
  $result = $null
  $null = $window.Dispatcher.InvokeAsync{
    $result = $window.ShowDialog()
    Set-Variable -Name result -Value $result -Scope 1
  }.Wait()
  $result
}

function Convert-XAMLtoWindow {
  <#
      .Synopsis
      Converts a XAML here string to a window object
  #>
  param
  (
    [Parameter(Mandatory=$true)][string]$XAML
  )
  
  Add-Type -AssemblyName PresentationFramework
  
  $reader = [XML.XMLReader]::Create([IO.StringReader]$XAML)
  $result = [Windows.Markup.XAMLReader]::Load($reader)
  $reader.Close()
  $reader = [XML.XMLReader]::Create([IO.StringReader]$XAML)
  while ($reader.Read())
  {
    $name=$reader.GetAttribute('Name')
    if (!$name) { $name=$reader.GetAttribute('x:Name') }
    if($name)
    {$result | Add-Member NoteProperty -Name $name -Value $result.FindName($name) -Force}
  }
  $reader.Close()
  $result
}

function get-nfsstatus{
  $nfsall = get-windowsfeature -name *nfs* 
  $nfsstatus = $nfsall | select-object -Property @{n='Select';e={$false}},displayname,Name,InstallState,Installed| sort-object -Property Name
  return $nfsstatus
}

function get-installstate{
  param($state)

  if($state){return 'Install'}else{return 'Remove'}

}

function set-nfsservices{
  param([array]$nfsservices,
  [ValidateSet('start','stop','restart')]$action)

  if($nfsservices.count -lt 1){return}

  foreach($nfsservice in $nfsservices){
    if($action -eq 'restart'){
      if((get-service -Name $nfsservice).Status -ne 'Running'){$action = 'start'}
    }
    if($nfsservice -eq 'nfsclnt'){
      $cmdpath = 'c:\windows\system32\cmd.exe'
 
      switch ($action){

        'start' {
          start-process -FilePath $cmdpath -ArgumentList ' /C net stop nfsrdr' -verb runas -WindowStyle Hidden -Wait
          start-process -FilePath $cmdpath -ArgumentList ' /C net start nfsrdr && net start nfsclnt' -verb runas -WindowStyle Hidden -Wait
          break
        }
        'stop' {
          start-process -FilePath $cmdpath -ArgumentList ' /C net stop nfsclnt && net stop nfsrdr' -verb runas -WindowStyle Hidden -Wait
          break
        }
        'restart'{

          start-process -FilePath $cmdpath -ArgumentList ' /C net stop nfsclnt' -verb runas -WindowStyle Hidden -Wait
          start-process -FilePath $cmdpath -ArgumentList ' /C net stop nfsrdr' -verb runas -WindowStyle Hidden -Wait 
          start-process -FilePath $cmdpath -ArgumentList ' /C net start nfsrdr && net start nfsclnt' -verb runas -WindowStyle Hidden -Wait
          break
        }
        'kill' {stop-process -Name nfsclnt -Force
          start-process -FilePath $cmdpath -ArgumentList ' /C net stop nfsrdr' -verb runas -WindowStyle Hidden
          break
        }
      }
    }
    if($nfsservice -eq 'nfsservice'){

      switch ($action){

        'start' {
          Start-Service -Name NfsService
          break
        }
        'stop' {
          Stop-Service -Name NfsService
          break
        }
        'restart'{
          Restart-Service -Name NfsService
          break
        }
        'kill' {
          stop-process -name nfssvc -Force
          break
        }
      }


    }
  }

}

function get-powershellversion2 {
  <#
      .Synopsis
      Gets powershell version and displays a message. Exists script if major version is lower than 3
  #>
  Write-Host "`nChecking PowerShell... " -NoNewline
  $pvs = ($PSVersionTable).psversion.Major
  $pvsfull = ($PSVersionTable).psversion.tostring()
  $color=$null
  Switch ($pvs){
    {$_ -ge 5} {$addon = 'is supported!'; $color='Green';break}
    {$_ -in (3..4)} {$addon = 'is not supported. Worth a try, though!';$color = 'Yellow';break}
    {$_ -lt 3} {$addon = 'is not supported'; $color='Red';break}
  }

  $xmessage = "Installed Powershell version:`n$($pvsfull) ($($addon))"
  if($color -eq 'Red'){
    set-message -message "$($xmessage)`n`nHit OK to exit"  -title 'Prerequisites Check' -icon Stop
  exit}
  if($color -eq 'Yellow'){
    set-message -message "$($xmessage)`n`nHit OK to continue"  -title 'Prerequisites Check' -icon Stop
  }
  $index = (5,$pvsfull.length | Measure-Object -Minimum).Minimum
  return $pvsfull.Substring(0,$index)
}

function import-cldtxmodule{
  param(
    $commonrootpath="$($env:Programdata)\Cloudistics\ScriptData",
    $modulename = 'cloudisticsapimodule'
  )
  function get-xfileName {
    param ($initialDirectory = (get-location),[switch]$savefile,$titleroot='Cloudistics Portal and API Key')

    $checkAssembly = ([System.AppDomain]::CurrentDomain.GetAssemblies() | where {$_.location -like "*System.Windows.Forms*"}).Location
    if(!($checkAssembly)){[System.Reflection.Assembly]::LoadWithPartialName('System.windows.forms') | Out-Null}

    $FileDialog = New-Object -TypeName System.Windows.Forms.OpenFileDialog
    $Title="Import $($titleroot)"
    if($savefile.IsPresent){
      $Filedialog = New-Object -TypeName System.Windows.Forms.SaveFileDialog
      $Title = "Export $($titleroot)"
    }
    $filedialog.Title = $Title
    $FileDialog.initialDirectory = $initialDirectory
    $FileDialog.filter = "PowerShellModule (*.psd1)| *.psd1| All files (*.*)| *.*"
    $FileDialog.ShowDialog() | Out-Null
    return $FileDialog.filename
  }

  if(!(get-module -name $modulename)){
    Write-Host 'Attempting to load module from the Windows Default Location' -ForegroundColor Yellow
    try{import-module $modulename -erroraction stop 3>&1 | Out-Null;
      Write-Host 'Success!' -ForegroundColor Green
    }
    catch{
      Write-Host "Failed!`nAttempting to load module from $($commonrootpath)" -ForegroundColor Yellow
      try{import-module "$($commonrootpath)\$($modulename)\$($modulename).psd1" -ErrorAction Stop 3>&1 | Out-Null;
        Write-Host 'Success!' -ForegroundColor Green
      }
      catch{
        Write-Host "Failed!`nSelect the module to import..." -ForegroundColor Yellow
        $modulepath = get-xfileName -initialDirectory (Get-Location) -titleroot 'Cloudistics Module'     
        if([System.String]::IsNullOrEmpty($modulepath)){Write-Host "`nNo Module selected. Exiting...`n"}
        try{
          if ((Split-path -Path $modulepath -Leaf) -ne "$($modulename).psd1"){Write-Host "`nWARNING. This is not the expected module name! Expected '$modulename' and got '$((Split-path -Path $modulepath -Leaf))' instead" -ForegroundColor Red }
          import-module $modulepath -ErrorAction stop 3>&1 | Out-Null;
          Write-Host 'Success!' -ForegroundColor Green
        }catch{
        Write-Host "`nError! Could not import selected module. Exiting..." -ForegroundColor Yellow; exit}
      }
    }
  }
  return (get-module $modulename)
}

function get-operatingSystem{
  param(
    $window
  )
  $myos = (get-wmiobject -class win32_operatingsystem | select-object caption).caption
  if($myos -notlike "*Server*"){$xmessage = "This Application runs only on`nMicrosoft Windows Server 2012R2 or 2016`nYour OS is $($myos)`n`nExiting..."
    #set-message -message $xmessage -title "Operating System Incompatibility" -Icon Stop
    [System.Windows.MessageBox]::Show($xmessage)
    exit
  }else{return $myos}
}

function set-trustedhosts{
  param(
    $servername,
    $saverfile="$($env:USERPROFILE)\AppData\Local\Temp\trustedhosts.json",
    [Parameter(Mandatory=$true)][ValidateSet('set','reset')]$action
  )

  $currenttrustedHosts = (Get-Item WSMan:\localhost\Client\TrustedHosts).Value
  switch ($action){
    'set' {if(!([System.string]::IsNullOrEmpty($currenttrustedHosts))){[pscustomobject]@{trustedhosts=$currenttrustedHosts;date=(Get-Date).tostring('yyyy-MM-ddTHH:mm:ss')} | ConvertTo-Json | Out-File $saverfile}
      set-item WSMan:\localhost\Client\TrustedHosts -Value $servername -Concatenate -Confirm:$false -Force     
      break
    }

    'reset' {$trustedhosts = ''
      if(test-path -Path $saverfile){$result = get-content $saverfile | ConvertFrom-Json; $trustedhosts = $result.trustedhosts}
      set-item WSMan:\localhost\Client\TrustedHosts -Value $trustedhosts -Confirm:$false -Force
      break
    }

  }
}

function check-rebootNeeded {

  if (Get-ItemProperty "HKLM:\SYSTEM\CurrentControlSet\Control\Session Manager" -Name PendingFileRenameOperations -ErrorAction SilentlyContinue) { return $true }
  if (Get-ChildItem "HKLM:\Software\Microsoft\Windows\CurrentVersion\Component Based Servicing\RebootPending" -ErrorAction SilentlyContinue) { return $true }
  if (Get-Item "HKLM:\SOFTWARE\Microsoft\Windows\CurrentVersion\WindowsUpdate\Auto Update\RebootRequired" -ErrorAction SilentlyContinue) { return $true }

  try { 
    $ccmstuff = Get-WmiObject -Namespace root\ccm\clientsdk -Class CCM_ClientUtilities -ErrorAction Stop
    $status = $ccmstuff.DetermineIfRebootPending()
    if(($status -ne $null) -and $status.RebootPending){
      return $true
    }
  }catch{}
 
  return $false
}
#endregion

#region Convert XAML to Window
$window = Convert-XAMLtoWindow -XAML $xaml 
#endregion

if(!($psISE)){$minv = "$(split-path ($MyInvocation.InvocationName) -Parent)"; if($minv -eq '.'){$minv = Get-Location} }else{$minv=($psISE.CurrentPowerShellTab.prompt).Trim().replace('>',$null)}

#region Define Event Handlers


$window.btn_Exit.add_Click(
  {
    $window.DialogResult = $false
  }
)

$window.add_Loaded(
  {
    $psv = get-powershellversion2 
    $vos = get-operatingSystem
    $cldtxmodule = import-cldtxmodule -commonrootpath $minv
    
    $iconpath = "$(Split-Path -Path (get-module cloudisticsapimodule).path -Parent)\cldtx.ico"
    if(Test-Path -Path $iconpath){$window.Icon = $iconpath}
    
    $fwservice = get-service -name MpsSvc | select-object -Property Displayname, Status
    if($fwservice.status -ne 'Running'){set-message -message "Please check the Windows Firewall service " -title 'Windows Firewall' -icon Information}
    $window.lbl_prerequisites.Text += ":`nPShell v: $($psv) ... OK`n"
    $window.lbl_prerequisites.Text += "OS: $($vos) ... OK`n"
    $window.lbl_prerequisites.Text += "$($cldtxmodule.Name) v:$($cldtxmodule.version) ... OK`n"
    $window.lbl_prerequisites.Text += "$($fwservice.displayname) Service ... $($fwservice.status)"
    $window.view_Feature.ItemsSource = get-nfsstatus
    [array]$updatedshare = [array]((Get-NfsShare -ErrorAction SilentlyContinue) | select-object -Property @{n='Select';e={$false}},Name,Path,IsOnline,NetworkName,UnmappedUserAccess) | Sort-Object -Property Name
    [array]$localNfsServices = get-service -Name "nfs*" | select-object @{n='select';e={$false}},status,name,displayname

    $window.view_Service.ItemsSource = $localNfsServices
    $window.view_Export.ItemsSource = $updatedshare
    $window.view_Share.ItemsSource = [array](Get-WmiObject -Class Win32_MappedLogicalDisk | Select-Object -property @{n='Select';e={$false}},Name, ProviderName,filesystem)
    
    $window.view_FirewallProfiles.ItemsSource = Get-NetFirewallProfile | Select-Object -Property @{n='select';e={$false}},name,enabled
    $window.view_FirewallRules.ItemsSource = Get-NetFirewallRule -name *nfs* | select-object -Property @{n='select';e={$false}},DisplayName,Name,Enabled
  }
)

$window.btn_AddWindowsFeatures.add_Click(
  {
   
    $xfeatures = @()
    foreach($xitem in $window.view_Feature.Items){if($xitem.Select -and (@('Available') -contains $xitem.installState) -and !($xitem.Installed)){$xfeatures += $xitem}}
    if($xfeatures.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message "The following Windows Features Profiles will be added`n$(($xfeatures.DisplayName | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'Windows NFS features' -buttons YesNo
    if($reply -eq 'No'){return}
    foreach($xfeature in $xfeatures){
      start-process -FilePath 'C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe' -ArgumentList " -command [console]::WindowWidth=70; [console]::WindowHeight=8; [console]::BufferWidth=[console]::WindowWidth;[console]::Title='Processing: $($xfeature.DisplayName)';Install-WindowsFeature -Name $($xfeature.name) -erroraction silentlycontinue" -Verb runas -Wait

    }
    $window.view_Feature.ItemsSource = get-nfsstatus  
    [array]$localNfsServices = get-service -Name "nfs*" | select-object @{n='select';e={$false}},status,name,displayname
    $window.view_Service.ItemsSource = $localNfsServices
    $window.view_FirewallRules.ItemsSource = Get-NetFirewallRule -name *nfs* | select-object -Property @{n='select';e={$false}},DisplayName,Name,Enabled

    if(check-rebootNeeded){$xreply = set-message -message "Reboot Needed`nDo you want to reboot now?" -title "Reboot Status" -buttons YesNo -icon Information;
    if($xreply -eq 'Yes'){Restart-Computer -Force}
    }
  }
)

$window.btn_RemoveWindowsFeatures.add_Click(
  {

    $xfeatures = @()
    foreach($xitem in $window.view_Feature.Items){if($xitem.Select -and ('Installed','PendingUpdate','InstallPending' -contains $xitem.installState) -and $xitem.Installed){$xfeatures += $xitem}}
    if($xfeatures.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message "The following Windows Features Profiles will be removed`n$(($xfeatures.DisplayName | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'Windows NFS features' -buttons YesNo
    if($reply -eq 'No'){return}
    foreach($xfeature in $xfeatures){
          start-process -FilePath 'C:\windows\system32\WindowsPowerShell\v1.0\powershell.exe' -ArgumentList " -command [console]::WindowWidth=70; [console]::WindowHeight=8; [console]::BufferWidth=[console]::WindowWidth;[console]::Title='Processing: $($xfeature.DisplayName)';Uninstall-WindowsFeature -Name $($xfeature.name) -erroraction silentlycontinue"  -Verb runas -Wait
    }
    $window.view_Feature.ItemsSource = get-nfsstatus  
    [array]$localNfsServices = get-service -Name "nfs*" | select-object @{n='select';e={$false}},status,name,displayname
    $window.view_Service.ItemsSource = $localNfsServices
    $window.view_FirewallRules.ItemsSource = Get-NetFirewallRule -name *nfs* | select-object -Property @{n='select';e={$false}},DisplayName,Name,Enabled
 
    if(check-rebootNeeded){$reply = set-message -message "Reboot Needed`nDo you want to reboot now?" -title "Reboot Status" -buttons YesNo -icon Information;
    if($reply -eq 'Yes'){Restart-Computer -Force}
    }
  }
)

$window.btn_stopService.add_Click(
  {
    $xNfsServices = @()
    foreach ($item in $window.view_Service.Items){
      if($item.Select){$xNfsServices += $item}
    }

    if($xNfsServices.count -lt 1){set-message "Nothing to do";return}
    $reply=set-message -message "The following service(s) will be stopped:`n$(($xNfsServices | select-object -property Displayname | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'nfs services' -buttons YesNo
    if($reply -eq 'No'){return}
    set-nfsservices -nfsservices $xNfsServices.Name -action stop 
    [array]$localNfsServices = get-service -Name "nfs*" | select-object @{n='select';e={$false}},status,name,displayname
    $window.view_Service.ItemsSource = $localNfsServices
  }
)

$window.btn_startService.add_Click(
  {
    $xNfsServices = @()
    foreach ($item in $window.view_Service.Items){
      if($item.Select){$xNfsServices += $item}
    }

    if($xNfsServices.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message -message "The following service(s) will be (re)started:`n$(($xNfsServices | select-object -property Displayname | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'nfs services' -buttons YesNo
    if($reply -eq 'No'){return}
    set-nfsservices -nfsservices $xNfsServices.Name -action restart 
    [array]$localNfsServices = get-service -Name "nfs*" | select-object @{n='select';e={$false}},status,name,displayname
    $window.view_Service.ItemsSource = $localNfsServices
  }
)

$window.btn_enableProfile.add_Click(
  {
    $xfwprofiles=@()
    foreach($xitem in $window.view_FirewallProfiles.Items){if($xitem.Select -and !($xitem.Enabled)){$xfwprofiles += $xitem}}
    if($xfwprofiles.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message "The following Windows Firewall Profiles will be enabled`n$(($xfwprofiles.Name | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'nfs services' -buttons YesNo
    if($reply -eq 'No'){return}
    foreach($xfwprofile in $xfwprofiles){  
      Set-NetFirewallProfile -Name $xfwprofile.Name -Enabled 1
    }
    $window.view_FirewallProfiles.ItemsSource = Get-NetFirewallProfile | Select-Object -Property @{n='select';e={$false}},name,enabled   
     
  }
)

$window.btn_disableProfile.add_Click(
  {
    $xfwprofiles=@()
    foreach($xitem in $window.view_FirewallProfiles.Items){if($xitem.Select -and $xitem.Enabled){$xfwprofiles += $xitem}}
    if($xfwprofiles.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message "The following Windows Firewall Profiles will be disabled`n$(($xfwprofiles.Name | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'nfs services' -buttons YesNo
    if($reply -eq 'No'){return}
    foreach($xfwprofile in $xfwprofiles){  
      Set-NetFirewallProfile -Name $xfwprofile.Name -Enabled 0
    }
    $window.view_FirewallProfiles.ItemsSource = Get-NetFirewallProfile | Select-Object -Property @{n='select';e={$false}},name,enabled   
     
  }
)

$window.btn_disableRule.add_Click(
  {
    $xrules = @()
    foreach($xitem in $window.view_FirewallRules.Items){if($xitem.Select -and $xitem.Enabled){$xrules += $xitem}}
    if($xrules.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message "The following Windows Firewall rules will be disabled`n$(($xrules.DisplayName | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'nfs services' -buttons YesNo
    if($reply -eq 'No'){return}
       foreach ($xrule in $xrules){
          $xrule | ft
         Set-NetFirewallRule -Name $xrule.Name -Enabled 'False'
       } 
    $window.view_FirewallRules.ItemsSource = Get-NetFirewallRule -Group *nfs* | select-object -Property @{n='select';e={$false}},DisplayName,Name,Enabled
           
})

$window.btn_enableRule.add_Click(
  {
    $xrules = @()
    foreach($xitem in $window.view_FirewallRules.Items){if($xitem.Select -and ($xitem.Enabled -eq 'False')){$xrules += $xitem}}
    if($xrules.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message "The following Windows Firewall rules will be enabled`n$(($xrules.DisplayName | ft -HideTableHeaders | Out-String).Trim())`nDo you want to continue?" -title 'nfs services' -buttons YesNo
    if($reply -eq 'No'){return}
       foreach ($xrule in $xrules){
       Set-NetFirewallRule -Name $xrule.Name -Enabled 'True'
       } 
    $window.view_FirewallRules.ItemsSource = Get-NetFirewallRule -Group *nfs* | select-object -Property @{n='select';e={$false}},DisplayName,Name,Enabled
           
})

$window.btn_enableRule.add_Click({})

$window.btn_AddNfsExport.add_Click(
  {
    $sharepath = get-folderName -initialdirectory (get-location) -title "Select folder to export as nfs"
    if(!($sharepath)){return}
    $reply = set-message "A new nfs export will be created. The path is:`n$($sharepath)`nDo you want to continue?" -title "New nfs export" -buttons YesNo
    if($reply -eq 'No'){return}
    $sharename = split-path $sharepath -Leaf

    New-NfsShare -Name $sharename -Path $sharepath -AllowRootAccess $true -Permission readwrite -Authentication all -Confirm:$false
    #$updatedShares = ([array]((Get-NfsShare) | select-object -Property @{n='remove';e={$false}},Name,IsOnline,Path,NetworkName,UnmappedUserAccess,AnonymousAccess) | Sort-Object -Property Name)
    [array]$updatedshare = [array]((Get-NfsShare) | select-object -Property @{n='Select';e={$false}},Name,Path,IsOnline,NetworkName,UnmappedUserAccess) | Sort-Object -Property Name
    $window.view_Export.ItemsSource = $updatedshare
    set-message -message "Created nfs Share:`n$(($updatedShare | select-object name,path | FT -HideTableHeaders | out-string).trim())"
    #$window.view_Export.ItemsSource = $updatedShares


  }
)

$window.btn_RemoveNfsExport.add_Click(
  {
    $exports=@()
    foreach ($item in $window.view_Export.Items){
       if($item.Select){$exports += $item}
    }
  
    if($exports.count -lt 1){set-message "Nothing to do";return}

    $reply = set-message -message "The following exports will be removed:`n$(($exports| FT -Property name,path -HideTableHeaders  | out-string).trim())`nDo you want to continue?" -title "nfs Exports Removal" -buttons YesNo
    if($reply -eq 'No'){return}
    foreach($export in $exports){
      $result = Remove-NfsShare -Path $export.path -Confirm:$false
    }
    #[System.Collections.ArrayList]$updatedshare=[array]((Get-NfsShare) | select-object -Property @{n='Remove';e={$false}},Name,IsOnline,Path,NetworkName,UnmappedUserAccess,AnonymousAccess) | sort-object -Property name
    [array]$updatedshare = [array]((Get-NfsShare) | select-object -Property @{n='Select';e={$false}},Name,Path,IsOnline,NetworkName,UnmappedUserAccess) | Sort-Object -Property Name
    $window.view_Export.ItemsSource = $updatedshare

  }
)

$window.btn_addNfsShare.add_Click(
  {
    $powershellpath = 'C:\Windows\System32\WindowsPowershell\v1.0\powershell.exe'
    #start-process -FilePath $powershellpath -ArgumentList "c:\temp\MountNfsExport.ps1" -verb runas -WindowStyle Hidden -Wait
    set-newnfsshare
    $window.view_Share.ItemsSource = [array](Get-WmiObject -Class Win32_MappedLogicalDisk | Select-Object -Property @{n='Select';e={$false}},Name, ProviderName,filesystem)

  }
)

$window.btn_removeNfsShare.add_Click(
  {
    $shares=@()
    foreach ($item in $window.view_Share.Items){
      if($item.Select){$shares += $item}
    }
    if($shares.count -lt 1){set-message "Nothing to do";return}
    $reply = set-message -message "The following shares will be removed:`n$(($shares | FT -Property name,providername -HideTableHeaders  | out-string).trim())`nDo you want to continue?" -title "nfs Exports Removal" -buttons YesNo
    if($reply -eq 'No'){return}

    foreach($xshare in $shares){
      #$Drive=$null
      #$wmiprovider = ($xshare.providername).replace('\','\\')
      #[array]$Drive = Get-WmiObject -Class Win32_mappedLogicalDisk -filter "ProviderName='$($wmiprovider)'"
      #set-message -message "$(($xshare | FL) | Out-String)"
      start-process -FilePath C:\windows\system32\cmd.exe -ArgumentList " /C net use $($xshare.Name) /delete /y" -Verb runas -Wait -WindowStyle Hidden
    }
    $window.view_Share.ItemsSource = [array](Get-WmiObject -Class Win32_MappedLogicalDisk | Select-Object -Property @{n='Select';e={$false}},Name, ProviderName,filesystem)


  }
)


#endregion Event Handlers

#region Manipulate Window Content

#$null = $window.TxtName.Focus()
#endregion

# Show Window
$result = Show-WPFWindow -Window $window

#region Process results
if ($result -eq $true)
{

}
else
{
  Write-Warning 'User aborted dialog.'
}
#endregion Process results


# SIG # Begin signature block
# MIID5wYJKoZIhvcNAQcCoIID2DCCA9QCAQExCzAJBgUrDgMCGgUAMGkGCisGAQQB
# gjcCAQSgWzBZMDQGCisGAQQBgjcCAR4wJgIDAQAABBAfzDtgWUsITrck0sYpfvNR
# AgEAAgEAAgEAAgEAAgEAMCEwCQYFKw4DAhoFAAQUuZomxcNIRo8iuOsaVKgA2sNP
# diSgggIDMIIB/zCCAWigAwIBAgIQF6mYDpAtKrtNz9HxoagZRjANBgkqhkiG9w0B
# AQUFADAaMRgwFgYDVQQDDA9UdWRvciBTIFBvcGVzY3UwHhcNMTkwMjA0MTc1NzAz
# WhcNMjMwMjA0MDAwMDAwWjAaMRgwFgYDVQQDDA9UdWRvciBTIFBvcGVzY3UwgZ8w
# DQYJKoZIhvcNAQEBBQADgY0AMIGJAoGBAMJ6byNCjjXlgXafTtOs+ljMA7t2ftEQ
# bjgoRyGs5zErRzbFwS+kuya/JrRYbMhwUslhjWTvpOkzPuUS1cvUT5FqmF2L/CQg
# fbu7dJzywqBqjbn6PawbatDE9g5BVy8G6/LCjStZBfavfagWpscm47M8qXQDX5Ui
# 42DJxKNh/ihHAgMBAAGjRjBEMBMGA1UdJQQMMAoGCCsGAQUFBwMDMB0GA1UdDgQW
# BBRZOKwcH96Yh8GPAGdN0NgKc13xuTAOBgNVHQ8BAf8EBAMCB4AwDQYJKoZIhvcN
# AQEFBQADgYEAA93tJjWysv+qNxRGB8J5WkRiaCYBOxxjq8ExgtX8mlI5V7WFqRsK
# HIBf2lp7pX5P3Owvy2iHVDY18mHXAnc3aMLnTZDsn9NScAKf8r9PeAnox7XtkiJh
# qIEACUVz1tpu+X6pPSBBucbGe/25lgtM8Rw9vDXKVScqmpPG7zw36pwxggFOMIIB
# SgIBATAuMBoxGDAWBgNVBAMMD1R1ZG9yIFMgUG9wZXNjdQIQF6mYDpAtKrtNz9Hx
# oagZRjAJBgUrDgMCGgUAoHgwGAYKKwYBBAGCNwIBDDEKMAigAoAAoQKAADAZBgkq
# hkiG9w0BCQMxDAYKKwYBBAGCNwIBBDAcBgorBgEEAYI3AgELMQ4wDAYKKwYBBAGC
# NwIBFTAjBgkqhkiG9w0BCQQxFgQUUpQ89SG/83fvdxkGNFG7XPqqEvwwDQYJKoZI
# hvcNAQEBBQAEgYC2LtaX/1ZaC0E+kUvyvYUx386R5LNGX1pvrwdZVqr6SukJzAIy
# QotDoaNYexYTj+pFtUAQuYVBptUKkXn+9+lN41wU9DVq+Y5cEMT0OJlR5oZo3rdU
# GqTbYjDhO7LFaNIwZloYc+o6xVmwQhsx90EcR+mIGqk0FbEQWxuIuRYdyg==
# SIG # End signature block
