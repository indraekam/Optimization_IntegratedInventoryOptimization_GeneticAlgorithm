function varargout = GUI(varargin)
% GUI MATLAB code for GUI.fig
%      GUI, by itself, creates a new GUI or raises the existing
%      singleton*.
%
%      H = GUI returns the handle to a new GUI or the handle to
%      the existing singleton*.
%
%      GUI('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in GUI.M with the given input arguments.
%
%      GUI('Property','Value',...) creates a new GUI or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before GUI_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to GUI_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help GUI

% Last Modified by GUIDE v2.5 04-Jun-2024 20:15:36

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @GUI_OpeningFcn, ...
                   'gui_OutputFcn',  @GUI_OutputFcn, ...
                   'gui_LayoutFcn',  [] , ...
                   'gui_Callback',   []);
if nargin && ischar(varargin{1})
    gui_State.gui_Callback = str2func(varargin{1});
end

if nargout
    [varargout{1:nargout}] = gui_mainfcn(gui_State, varargin{:});
else
    gui_mainfcn(gui_State, varargin{:});
end
% End initialization code - DO NOT EDIT


% --- Executes just before GUI is made visible.
function GUI_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to GUI (see VARARGIN)

% Choose default command line output for GUI
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes GUI wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = GUI_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function txtOrderQuantityB_Callback(hObject, eventdata, handles)
% hObject    handle to txtOrderQuantityB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtOrderQuantityB as text
%        str2double(get(hObject,'String')) returns contents of txtOrderQuantityB as a double


% --- Executes during object creation, after setting all properties.
function txtOrderQuantityB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtOrderQuantityB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtSafetyFactorB_Callback(hObject, eventdata, handles)
% hObject    handle to txtSafetyFactorB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSafetyFactorB as text
%        str2double(get(hObject,'String')) returns contents of txtSafetyFactorB as a double


% --- Executes during object creation, after setting all properties.
function txtSafetyFactorB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSafetyFactorB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLeadTimeB_Callback(hObject, eventdata, handles)
% hObject    handle to txtLeadTimeB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLeadTimeB as text
%        str2double(get(hObject,'String')) returns contents of txtLeadTimeB as a double


% --- Executes during object creation, after setting all properties.
function txtLeadTimeB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLeadTimeB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtShipmentV_Callback(hObject, eventdata, handles)
% hObject    handle to txtShipmentV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtShipmentV as text
%        str2double(get(hObject,'String')) returns contents of txtShipmentV as a double


% --- Executes during object creation, after setting all properties.
function txtShipmentV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtShipmentV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtProbControlV_Callback(hObject, eventdata, handles)
% hObject    handle to txtProbControlV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtProbControlV as text
%        str2double(get(hObject,'String')) returns contents of txtProbControlV as a double


% --- Executes during object creation, after setting all properties.
function txtProbControlV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtProbControlV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTecB_Callback(hObject, eventdata, handles)
% hObject    handle to txtTecB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTecB as text
%        str2double(get(hObject,'String')) returns contents of txtTecB as a double


% --- Executes during object creation, after setting all properties.
function txtTecB_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTecB (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtOrderQuantityM_Callback(hObject, eventdata, handles)
% hObject    handle to txtOrderQuantityM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtOrderQuantityM as text
%        str2double(get(hObject,'String')) returns contents of txtOrderQuantityM as a double


% --- Executes during object creation, after setting all properties.
function txtOrderQuantityM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtOrderQuantityM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtSafetyFactorM_Callback(hObject, eventdata, handles)
% hObject    handle to txtSafetyFactorM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSafetyFactorM as text
%        str2double(get(hObject,'String')) returns contents of txtSafetyFactorM as a double


% --- Executes during object creation, after setting all properties.
function txtSafetyFactorM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSafetyFactorM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLeadTimeM_Callback(hObject, eventdata, handles)
% hObject    handle to txtLeadTimeM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLeadTimeM as text
%        str2double(get(hObject,'String')) returns contents of txtLeadTimeM as a double


% --- Executes during object creation, after setting all properties.
function txtLeadTimeM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLeadTimeM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit24_Callback(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit24 as text
%        str2double(get(hObject,'String')) returns contents of edit24 as a double


% --- Executes during object creation, after setting all properties.
function edit24_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit24 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit25_Callback(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit25 as text
%        str2double(get(hObject,'String')) returns contents of edit25 as a double


% --- Executes during object creation, after setting all properties.
function edit25_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit25 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTecM_Callback(hObject, eventdata, handles)
% hObject    handle to txtTecM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTecM as text
%        str2double(get(hObject,'String')) returns contents of txtTecM as a double


% --- Executes during object creation, after setting all properties.
function txtTecM_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTecM (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtOrderQuantityF_Callback(hObject, eventdata, handles)
% hObject    handle to txtOrderQuantityF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtOrderQuantityF as text
%        str2double(get(hObject,'String')) returns contents of txtOrderQuantityF as a double


% --- Executes during object creation, after setting all properties.
function txtOrderQuantityF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtOrderQuantityF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtSafetyFactorF_Callback(hObject, eventdata, handles)
% hObject    handle to txtSafetyFactorF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtSafetyFactorF as text
%        str2double(get(hObject,'String')) returns contents of txtSafetyFactorF as a double


% --- Executes during object creation, after setting all properties.
function txtSafetyFactorF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtSafetyFactorF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLeadTimeF_Callback(hObject, eventdata, handles)
% hObject    handle to txtLeadTimeF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLeadTimeF as text
%        str2double(get(hObject,'String')) returns contents of txtLeadTimeF as a double


% --- Executes during object creation, after setting all properties.
function txtLeadTimeF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLeadTimeF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit30_Callback(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit30 as text
%        str2double(get(hObject,'String')) returns contents of edit30 as a double


% --- Executes during object creation, after setting all properties.
function edit30_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit30 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit31_Callback(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit31 as text
%        str2double(get(hObject,'String')) returns contents of edit31 as a double


% --- Executes during object creation, after setting all properties.
function edit31_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit31 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTecF_Callback(hObject, eventdata, handles)
% hObject    handle to txtTecF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTecF as text
%        str2double(get(hObject,'String')) returns contents of txtTecF as a double


% --- Executes during object creation, after setting all properties.
function txtTecF_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTecF (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtDemandBatik_Callback(hObject, eventdata, handles)
% hObject    handle to txtDemandBatik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDemandBatik as text
%        str2double(get(hObject,'String')) returns contents of txtDemandBatik as a double


% --- Executes during object creation, after setting all properties.
function txtDemandBatik_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDemandBatik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLogisticCostBatik_Callback(hObject, eventdata, handles)
% hObject    handle to txtLogisticCostBatik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLogisticCostBatik as text
%        str2double(get(hObject,'String')) returns contents of txtLogisticCostBatik as a double


% --- Executes during object creation, after setting all properties.
function txtLogisticCostBatik_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLogisticCostBatik (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in btnProses.
function btnProses_Callback(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% Mengambil nilai dari komponen Edit Text
demandB = get(handles.txtDemandBatik, 'String');
logisticCostB = get(handles.txtLogisticCostBatik, 'String');

demandM = get(handles.txtDemandMargaria, 'String');
logisticCostM = get(handles.txtLogisticCostMargaria, 'String');

demandF = get(handles.txtDemandFendi, 'String');
logisticCostF = get(handles.txtLogisticCostFendi, 'String');

% Mengonversi nilai dari String ke double
demandB = str2double(demandB);
logisticCostB = str2double(logisticCostB);

demandM = str2double(demandM);
logisticCostM = str2double(logisticCostM);

demandF = str2double(demandF);
logisticCostF = str2double(logisticCostF);

populasi = 50; % (jumlah individu min 20) ini bisa dirubah
iterasi = 10;
arrIndividu = InisialisasiIndividu(populasi);

fprintf('Individu Awal(Inisialisasi Individu)\n');

PrintIndividu(populasi, arrIndividu);

arrFitness = HitungFitnessGui(populasi, arrIndividu, demandB, demandM, demandF, logisticCostB, logisticCostM, logisticCostF);


for i = 1 :  iterasi
    
    arrAnakCross = Crossover(populasi, arrIndividu);

    % arrAnakCross

    arrAnakMutasi = Mutasi(populasi, arrIndividu);

    % arrAnakMutasi

    [arrAllIndividu, arrAllFitness] = EvaluasiGui(arrAnakCross, arrAnakMutasi, arrIndividu, arrFitness,  demandB, demandM, demandF, logisticCostB, logisticCostM, logisticCostF);

    % arrAllIndividu


    [arrIndividu, arrFitness] = Seleksi(arrAllIndividu, arrAllFitness, populasi);
    disp("=======================================================");
    fprintf("\nIterasi Ke - %d : \n", i);
%     PrintIndividu(populasi, arrIndividu);
    PrintIndividuLimit(populasi, arrIndividu);
    fprintf("\n");
    for j = 1 : populasi 
        formatted_numbers = num2str(arrFitness(j), '%.2f, ');
        formatted_numbers = InsertCommas(formatted_numbers);
        fprintf("Fitness Individu %d : Rp %s\n",j, formatted_numbers);
    end
    disp("=======================================================");
end



bestSolution = arrIndividu(1, :);
bestFitness = arrFitness(1);

[qBatik, kBatik, lBatik, qMar, kMar, lMar, qFen, kFen, lFen, m, theta] = printIndividuGui(1, bestSolution);
formatted_numbers = num2str(bestFitness, '%.2f, ');
formatted_numbers = InsertCommas(formatted_numbers);
fprintf("Best Fitness : Rp %s\n", formatted_numbers);

disp('========================================================');
disp('================== Detail ========================');
[jtecb, jtecv, totalFitness] = PrintDetailGui(bestSolution, demandB, demandM, demandF, logisticCostB, logisticCostM, logisticCostF);

tecB = jtecb(1,1);
tecM = jtecb(2,1);
tecF = jtecb(3,1);
fprintf("Best Fitness : Rp %s\n", formatted_numbers);

% Batik Keris
set(handles.txtOrderQuantityB, 'String', num2str(round(qBatik)));
set(handles.txtSafetyFactorB, 'String', num2str(kBatik));
set(handles.txtLeadTimeB, 'String', num2str(round(lBatik)));
formatted_numbers_tecB = num2str(tecB, '%.2f, ');
formatted_numbers_tecB = InsertCommas(formatted_numbers_tecB);
formatted_numbers_tecB = strcat('Rp. ', formatted_numbers_tecB);
set(handles.txtTecB, 'String', formatted_numbers_tecB);

% Margaria Batik
set(handles.txtOrderQuantityM, 'String', num2str(round(qMar)));
set(handles.txtSafetyFactorM, 'String', num2str(kMar));
set(handles.txtLeadTimeM, 'String', num2str(round(lMar)));
formatted_numbers_tecM = num2str(tecM, '%.2f, ');
formatted_numbers_tecM = InsertCommas(formatted_numbers_tecM);
formatted_numbers_tecM = strcat('Rp. ', formatted_numbers_tecM);
set(handles.txtTecM, 'String',  formatted_numbers_tecM);

% Fhendi  Batik
set(handles.txtOrderQuantityF, 'String', num2str(round(qFen)));
set(handles.txtSafetyFactorF, 'String', num2str(kFen));
set(handles.txtLeadTimeF, 'String', num2str(round(lFen)));
formatted_numbers_tecF = num2str(tecF, '%.2f, ');
formatted_numbers_tecF = InsertCommas(formatted_numbers_tecF);
formatted_numbers_tecF = strcat('Rp. ', formatted_numbers_tecF);
set(handles.txtTecF, 'String',  formatted_numbers_tecF);

% Vendor
set(handles.txtShipmentV, 'String', num2str(round(m)));
set(handles.txtProbControlV, 'String', num2str(theta));
formatted_numbers_tecV = num2str(jtecv, '%.2f, ');
formatted_numbers_tecV = InsertCommas(formatted_numbers_tecV);
formatted_numbers_tecV = strcat('Rp. ', formatted_numbers_tecV);
set(handles.txtTecV, 'String', num2str(formatted_numbers_tecV));

%Total
formatted_numbers_total = num2str(totalFitness, '%.2f, ');
formatted_numbers_total = InsertCommas(formatted_numbers_total);
formatted_numbers_total = strcat('Rp. ', formatted_numbers_total);
set(handles.txtJtec, 'String', num2str(formatted_numbers_total));


function txtDemandMargaria_Callback(hObject, eventdata, handles)
% hObject    handle to txtDemandMargaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDemandMargaria as text
%        str2double(get(hObject,'String')) returns contents of txtDemandMargaria as a double


% --- Executes during object creation, after setting all properties.
function txtDemandMargaria_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDemandMargaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLogisticCostMargaria_Callback(hObject, eventdata, handles)
% hObject    handle to txtLogisticCostMargaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLogisticCostMargaria as text
%        str2double(get(hObject,'String')) returns contents of txtLogisticCostMargaria as a double


% --- Executes during object creation, after setting all properties.
function txtLogisticCostMargaria_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLogisticCostMargaria (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtDemandFendi_Callback(hObject, eventdata, handles)
% hObject    handle to txtDemandFendi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtDemandFendi as text
%        str2double(get(hObject,'String')) returns contents of txtDemandFendi as a double


% --- Executes during object creation, after setting all properties.
function txtDemandFendi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtDemandFendi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtLogisticCostFendi_Callback(hObject, eventdata, handles)
% hObject    handle to txtLogisticCostFendi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtLogisticCostFendi as text
%        str2double(get(hObject,'String')) returns contents of txtLogisticCostFendi as a double


% --- Executes during object creation, after setting all properties.
function txtLogisticCostFendi_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtLogisticCostFendi (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtTecV_Callback(hObject, eventdata, handles)
% hObject    handle to txtTecV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtTecV as text
%        str2double(get(hObject,'String')) returns contents of txtTecV as a double


% --- Executes during object creation, after setting all properties.
function txtTecV_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtTecV (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function txtJtec_Callback(hObject, eventdata, handles)
% hObject    handle to txtJtec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of txtJtec as text
%        str2double(get(hObject,'String')) returns contents of txtJtec as a double


% --- Executes during object creation, after setting all properties.
function txtJtec_CreateFcn(hObject, eventdata, handles)
% hObject    handle to txtJtec (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on key press with focus on btnProses and none of its controls.
function btnProses_KeyPressFcn(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  structure with the following fields (see MATLAB.UI.CONTROL.UICONTROL)
%	Key: name of the key that was pressed, in lower case
%	Character: character interpretation of the key(s) that was pressed
%	Modifier: name(s) of the modifier key(s) (i.e., control, shift) pressed
% handles    structure with handles and user data (see GUIDATA)





% --- If Enable == 'on', executes on mouse press in 5 pixel border.
% --- Otherwise, executes on mouse press in 5 pixel border or over btnProses.
function btnProses_ButtonDownFcn(hObject, eventdata, handles)
% hObject    handle to btnProses (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
demandB = handles.txtDemandBatik;
fprintf('Individu Awal(Inisialisasi Individu)\n');
