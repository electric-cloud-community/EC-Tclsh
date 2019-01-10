my %runTclsh = (
    label       => "Tclsh - Run Tclsh",
    procedure   => "runTclsh",
    description => "Creates a Tclsh step",
    category    => "Scripting/Shell"
);

$batch->deleteProperty("/server/ec_customEditors/pickerStep/EC-Tclsh - runTclsh");
$batch->deleteProperty("/server/ec_customEditors/pickerStep/Tclsh - Run Tclsh");

@::createStepPickerSteps = (\%runTclsh);
