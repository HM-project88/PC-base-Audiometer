function varargout = Calibration1(varargin)
% CALIBRATION1 MATLAB code for Calibration1.fig
%      CALIBRATION1, by itself, creates a new CALIBRATION1 or raises the existing
%      singleton*.
%
%      H = CALIBRATION1 returns the handle to a new CALIBRATION1 or the handle to
%      the existing singleton*.
%
%      CALIBRATION1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in CALIBRATION1.M with the given input arguments.
%
%      CALIBRATION1('Property','Value',...) creates a new CALIBRATION1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Calibration1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Calibration1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Calibration1

% Last Modified by GUIDE v2.5 01-Apr-2014 09:47:54

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Calibration1_OpeningFcn, ...
                   'gui_OutputFcn',  @Calibration1_OutputFcn, ...
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


% --- Executes just before Calibration1 is made visible.
function Calibration1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Calibration1 (see VARARGIN)

% Choose default command line output for Calibration1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Calibration1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
a=date;
set(handles.Date,'string',a);

% --- Outputs from this function are returned to the command line.
function varargout = Calibration1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function password_Callback(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of password as text
%        str2double(get(hObject,'String')) returns contents of password as a double


% --- Executes during object creation, after setting all properties.
function password_CreateFcn(hObject, eventdata, handles)
% hObject    handle to password (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Start_sound.
function Start_sound_Callback(hObject, eventdata, handles)
% hObject    handle to Start_sound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Save.
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Exit_sound.
function Exit_sound_Callback(hObject, eventdata, handles)
% hObject    handle to Exit_sound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in LE_RE.
function LE_RE_Callback(hObject, eventdata, handles)
% hObject    handle to LE_RE (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Play_sound.
function Play_sound_Callback(hObject, eventdata, handles)
% hObject    handle to Play_sound (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on slider movement.
function Set_volume_Callback(hObject, eventdata, handles)
% hObject    handle to Set_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Set_volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Set_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on slider movement.
function Choose_volume_Callback(hObject, eventdata, handles)
% hObject    handle to Choose_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Choose_volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Choose_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end



function edit_choose_volume_Callback(hObject, eventdata, handles)
% hObject    handle to edit_choose_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit_choose_volume as text
%        str2double(get(hObject,'String')) returns contents of edit_choose_volume as a double


% --- Executes during object creation, after setting all properties.
function edit_choose_volume_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit_choose_volume (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in F_250.
function F_250_Callback(hObject, eventdata, handles)
% hObject    handle to F_250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_250


% --- Executes on slider movement.
function Set_frequency_Callback(hObject, eventdata, handles)
% hObject    handle to Set_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider


% --- Executes during object creation, after setting all properties.
function Set_frequency_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Set_frequency (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end


% --- Executes on button press in F_500.
function F_500_Callback(hObject, eventdata, handles)
% hObject    handle to F_500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_500


% --- Executes on button press in F_1000.
function F_1000_Callback(hObject, eventdata, handles)
% hObject    handle to F_1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_1000


% --- Executes on button press in F_2000.
function F_2000_Callback(hObject, eventdata, handles)
% hObject    handle to F_2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_2000


% --- Executes on button press in F_3000.
function F_3000_Callback(hObject, eventdata, handles)
% hObject    handle to F_3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_3000


% --- Executes on button press in F_4000.
function F_4000_Callback(hObject, eventdata, handles)
% hObject    handle to F_4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_4000


% --- Executes on button press in F_6000.
function F_6000_Callback(hObject, eventdata, handles)
% hObject    handle to F_6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_6000


% --- Executes on button press in F_8000.
function F_8000_Callback(hObject, eventdata, handles)
% hObject    handle to F_8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of F_8000


% --- Executes on button press in Start_switch.
function Start_switch_Callback(hObject, eventdata, handles)
% hObject    handle to Start_switch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Result_switch_Callback(hObject, eventdata, handles)
% hObject    handle to Result_switch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Result_switch as text
%        str2double(get(hObject,'String')) returns contents of Result_switch as a double


% --- Executes during object creation, after setting all properties.
function Result_switch_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Result_switch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in Exit_switch.
function Exit_switch_Callback(hObject, eventdata, handles)
% hObject    handle to Exit_switch (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Testing_Callback(hObject, eventdata, handles)
% hObject    handle to Testing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Database_Callback(hObject, eventdata, handles)
% hObject    handle to Database (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Calibration_Callback(hObject, eventdata, handles)
% hObject    handle to Calibration1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Date_Callback(hObject, eventdata, handles)
% hObject    handle to Date (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Date as text
%        str2double(get(hObject,'String')) returns contents of Date as a double


% --- Executes during object creation, after setting all properties.
function Date_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Date (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end
