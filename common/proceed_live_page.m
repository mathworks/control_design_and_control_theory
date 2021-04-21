function proceed_live_page(to_doc_name)
%% Simulinkモデルを閉じる
while(1)
    if isempty(bdroot)
        break;
    end
    
    % 編集状態であれば保存する
    d_status = get_param(bdroot, 'Dirty');
    if strcmp(d_status, 'on')
        save_system(bdroot, [], 'SaveDirtyReferencedModels', true);
    end
    
    close_system(bdroot);
end

%% シミュレーションデータインスペクターを閉じる
Simulink.sdi.close;

%% 今開いているライブスクリプトを閉じ、次のライブスクリプトを開く
allDocs = matlab.desktop.editor.getAll;
now_doc_path = matlab.desktop.editor.getActiveFilename;
now_doc_path_s = strsplit(now_doc_path, filesep);
now_doc_name = now_doc_path_s{end};

for i = 1:numel(allDocs)
    file_path = allDocs(i).Filename;
    file_path_s = strsplit(file_path, filesep);
    
    if strcmp(now_doc_name, file_path_s{end})
        allDocs(i).save;
        allDocs(i).close;
    end
end

open(to_doc_name);

end
