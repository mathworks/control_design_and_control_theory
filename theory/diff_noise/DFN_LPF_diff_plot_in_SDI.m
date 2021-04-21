%% 結果を表示
Simulink.sdi.clearAllSubPlots;
Simulink.sdi.view;
Simulink.sdi.setSubPlotLayout(2, 1);

RunIDs = Simulink.sdi.getAllRunIDs;
RunID = Simulink.sdi.getRun(RunIDs(end));

sigID = RunID.getSignalIDsByName('diff');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 1, true);

sigID = RunID.getSignalIDsByName('LPF_diff');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(2, 1, true);
