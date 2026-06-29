% For running pipeline locally at SMU 
% Make sure to add FlyDisco and the experiment directories to your file
% path before starting this code


modpath

%Keep this the same
cluster_billing_account_name = 'rubin' ;
user_name_for_configuration_purposes = 'rubinlab' ; 

%Update with the path to settings-internal on your computer
settings_folder_path = '/Users/50358419/Documents/Github/FlyDiscoAnalysis/settings-internal';

%Update with settings directory for your experiments 

% this is for continuous stimulation optogenetic fly bubble experiments
analysis_protocol_use = '20260412_BubblefRGB_GtAg_SMU';
%this is for pulsed stimulation optogenetic fly bubble experiments
% analysis_protocol_use = '20260508_BubblefRGB_Pulsed_SMU'; 
% this is for non-optogenetic (i.e. wild type) fly bubble experiments
% analysis_protocol_use = '20260426_BubblefRGB_nonOpto_SMU';

%Keep this the same unless making major change to code base
optional_argument_list = {'settingsdir', settings_folder_path,'analysis_protocol',analysis_protocol_use};

%This should be kept the same unless running on cluster
do_use_bqueue = false ;
do_actually_submit_jobs = false ;
do_try = true ;
ssh_host_name = 'login2.int.janelia.org' ;

%Update below with list of experiments to be run
folder_path_from_experiment_index = {'/Users/50358419/Library/CloudStorage/Box-Box/Schretter Lab/Data_Storage/FlyBubble/20260605T111045_rig2_flyBubble1_SS97505_20XChrim_attp2_20260506_Red_Cont_RAMP10to90'};

% Call the user-facing run function to do the real work
run_transfero_FlyDiscoPipeline_wrapper_on_experiment_list(folder_path_from_experiment_index, ...
                                                          cluster_billing_account_name, ...
                                                          user_name_for_configuration_purposes, ...
                                                          do_use_bqueue, ...
                                                          do_actually_submit_jobs, ...
                                                          do_try, ...
                                                          ssh_host_name, ...
                                                          optional_argument_list{:})