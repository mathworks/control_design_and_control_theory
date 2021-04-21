%% 結果を表示
Simulink.sdi.clearAllSubPlots;
Simulink.sdi.view;
Simulink.sdi.setSubPlotLayout(3, 1);

RunIDs = Simulink.sdi.getAllRunIDs;
RunID = Simulink.sdi.getRun(RunIDs(end));

sigID = RunID.getSignalIDsByName('ref');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 1, true);

sigID = RunID.getSignalIDsByName('meas');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 1, true);

sigID = RunID.getSignalIDsByName('command_sat');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(2, 1, true);

sigID = RunID.getSignalIDsByName('command');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(2, 1, true);

sigID = RunID.getSignalIDsByName('I_command');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(3, 1, true);
