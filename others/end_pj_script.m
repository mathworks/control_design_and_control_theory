%% Init
clear functions;
proj = currentProject;

%% delete temporary files
cd('./cache');
delete('*.*');
try
    rmdir('*','s');
catch
    % Do Nothing
end

%% Terminate
cd(proj.RootFolder);

allDocs = matlab.desktop.editor.getAll;
allDocs.close;
clear all;
bdclose all;
clc;
