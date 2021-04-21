%% 結果を表示
Simulink.sdi.clearAllSubPlots;
Simulink.sdi.view;
Simulink.sdi.setSubPlotLayout(2, 2);

RunIDs = Simulink.sdi.getAllRunIDs;
RunID = Simulink.sdi.getRun(RunIDs(end));

sigID = RunID.getSignalIDsByName('ref_fb');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 1, true);

sigID = RunID.getSignalIDsByName('out_fb');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 1, true);

sigID = RunID.getSignalIDsByName('command_fb');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(2, 1, true);

sigID = RunID.getSignalIDsByName('ref_fb');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 2, true);

sigID = RunID.getSignalIDsByName('out_ff');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(1, 2, true);

sigID = RunID.getSignalIDsByName('command_ff');
sigHD = RunID.getSignal(sigID);
sigHD.plotOnSubPlot(2, 2, true);
