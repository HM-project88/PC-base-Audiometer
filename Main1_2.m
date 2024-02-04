function varargout = Main1_2(varargin)
% MAIN1_2 MATLAB code for Main1_2.fig
%      MAIN1_2, by itself, creates a new MAIN1_2 or raises the existing
%      singleton*.
%
%      H = MAIN1_2 returns the handle to a new MAIN1_2 or the handle to
%      the existing singleton*.
%
%      MAIN1_2('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in MAIN1_2.M with the given input arguments.
%
%      MAIN1_2('Property','Value',...) creates a new MAIN1_2 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Main1_2_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Main1_2_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Main1_2

% Last Modified by GUIDE v2.5 01-Apr-2014 12:12:53

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Main1_2_OpeningFcn, ...
                   'gui_OutputFcn',  @Main1_2_OutputFcn, ...
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

% --- Executes just before Main1_2 is made visible.
function Main1_2_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Main1_2 (see VARARGIN)

% Choose default command line output for Main1_2
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Main1_2 wait for user response (see UIRESUME)
% uiwait(handles.figure1);

a=date;
set(handles.Date_edit,'string',a);
%
sliderMin = 0;
sliderMax = 80; % this is variable
sliderStep = [.01, .01]; % major and minor steps of 1
set(handles.slider1, 'Min', sliderMin);
set(handles.slider1, 'Max', sliderMax);
set(handles.slider1, 'SliderStep', sliderStep);
set(handles.slider1, 'Value', sliderMin); % set to beginning of sequence
Manual=get(handles.slider1,'Value');
set(handles.Manual_Volume_control,'string',[num2str(Manual),'(db)']);
%

% sliderMin = get(hObject, 'Min') % correct
% sliderMax = get(hObject, 'Max') % correct
% sliderStep = get(hObject, 'SliderStep') % correct
% currentSliderStep = get(hObject, 'Value') % correct, 1 at start


% --- Outputs from this function are returned to the command line.
function varargout = Main1_2_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;

% --- Executes during object deletion, before destroying properties.
function axes1_DeleteFcn(hObject, eventdata, handles)
% hObject    handle to axes1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Exit.
function Exit_Callback(hObject, eventdata, handles)
% hObject    handle to Exit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all


% --- Executes on button press in Manual_Auto.
function Manual_Auto_Callback(hObject, eventdata, handles)
% hObject    handle to Manual_Auto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
data = guidata(hObject);
data=struct2cell(data);
data=data{end};
switch length(data)
    case 1
        handles.output  ={'A',10};
        guidata(hObject, handles);
        set(handles.Manual_Auto,'string','Auto')
    case 2
        handles.output={'M'};
        guidata(hObject, handles);
        set(handles.Manual_Auto,'string','Manual')
end


% --- Executes on button press in Start.
function Start_Callback(hObject, eventdata, handles)
% hObject    handle to Start (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in end_test.
function end_test_Callback(hObject, eventdata, handles)
% hObject    handle to end_test (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Print.
function Print_Callback(hObject, eventdata, handles)
% hObject    handle to Print (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --- Executes on button press in Save.
function Save_Callback(hObject, eventdata, handles)
% hObject    handle to Save (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)



function Name_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Name_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Name_edit as text
%        str2double(get(hObject,'String')) returns contents of Name_edit as a double


% --- Executes during object creation, after setting all properties.
function Name_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Name_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Height_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Height_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Height_edit as text
%        str2double(get(hObject,'String')) returns contents of Height_edit as a double


% --- Executes during object creation, after setting all properties.
function Height_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Height_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Weight_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Weight_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Weight_edit as text
%        str2double(get(hObject,'String')) returns contents of Weight_edit as a double


% --- Executes during object creation, after setting all properties.
function Weight_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Weight_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gendee_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Gendee_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gendee_edit as text
%        str2double(get(hObject,'String')) returns contents of Gendee_edit as a double


% --- Executes during object creation, after setting all properties.
function Gendee_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gendee_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Date_edit_Callback(hObject, eventdata, handles)
% hObject    handle to Date_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Date_edit as text
%        str2double(get(hObject,'String')) returns contents of Date_edit as a double


% --- Executes during object creation, after setting all properties.
function Date_edit_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Date_edit (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on slider movement.
function slider1_Callback(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'Value') returns position of slider
%        get(hObject,'Min') and get(hObject,'Max') to determine range of slider
Manual=get(handles.slider1,'Value');
set(handles.Manual_Volume_control,'string',[num2str(Manual),'(db)']);


% --- Executes during object creation, after setting all properties.
function slider1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to slider1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: slider controls usually have a light gray background.
if isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor',[.9 .9 .9]);
end
%


function Manual_Volume_control_Callback(hObject, eventdata, handles)
% hObject    handle to Manual_Volume_control (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Manual_Volume_control as text
%        str2double(get(hObject,'String')) returns contents of Manual_Volume_control as a double


% --- Executes during object creation, after setting all properties.
function Manual_Volume_control_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Manual_Volume_control (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_250_Callback(hObject, eventdata, handles)
% hObject    handle to FL_250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_250 as text
%        str2double(get(hObject,'String')) returns contents of FL_250 as a double


% --- Executes during object creation, after setting all properties.
function FL_250_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_500_Callback(hObject, eventdata, handles)
% hObject    handle to FL_500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_500 as text
%        str2double(get(hObject,'String')) returns contents of FL_500 as a double


% --- Executes during object creation, after setting all properties.
function FL_500_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_1000_Callback(hObject, eventdata, handles)
% hObject    handle to FL_1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_1000 as text
%        str2double(get(hObject,'String')) returns contents of FL_1000 as a double


% --- Executes during object creation, after setting all properties.
function FL_1000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_2000_Callback(hObject, eventdata, handles)
% hObject    handle to FL_2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_2000 as text
%        str2double(get(hObject,'String')) returns contents of FL_2000 as a double


% --- Executes during object creation, after setting all properties.
function FL_2000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_3000_Callback(hObject, eventdata, handles)
% hObject    handle to FL_3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_3000 as text
%        str2double(get(hObject,'String')) returns contents of FL_3000 as a double


% --- Executes during object creation, after setting all properties.
function FL_3000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_4000_Callback(hObject, eventdata, handles)
% hObject    handle to FL_4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_4000 as text
%        str2double(get(hObject,'String')) returns contents of FL_4000 as a double


% --- Executes during object creation, after setting all properties.
function FL_4000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_6000_Callback(hObject, eventdata, handles)
% hObject    handle to FL_6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_6000 as text
%        str2double(get(hObject,'String')) returns contents of FL_6000 as a double


% --- Executes during object creation, after setting all properties.
function FL_6000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FL_8000_Callback(hObject, eventdata, handles)
% hObject    handle to FL_8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FL_8000 as text
%        str2double(get(hObject,'String')) returns contents of FL_8000 as a double


% --- Executes during object creation, after setting all properties.
function FL_8000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FL_8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_250_Callback(hObject, eventdata, handles)
% hObject    handle to FR_250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_250 as text
%        str2double(get(hObject,'String')) returns contents of FR_250 as a double


% --- Executes during object creation, after setting all properties.
function FR_250_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_250 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_500_Callback(hObject, eventdata, handles)
% hObject    handle to FR_500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_500 as text
%        str2double(get(hObject,'String')) returns contents of FR_500 as a double


% --- Executes during object creation, after setting all properties.
function FR_500_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_500 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_1000_Callback(hObject, eventdata, handles)
% hObject    handle to FR_1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_1000 as text
%        str2double(get(hObject,'String')) returns contents of FR_1000 as a double


% --- Executes during object creation, after setting all properties.
function FR_1000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_1000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_2000_Callback(hObject, eventdata, handles)
% hObject    handle to FR_2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_2000 as text
%        str2double(get(hObject,'String')) returns contents of FR_2000 as a double


% --- Executes during object creation, after setting all properties.
function FR_2000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_2000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_3000_Callback(hObject, eventdata, handles)
% hObject    handle to FR_3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_3000 as text
%        str2double(get(hObject,'String')) returns contents of FR_3000 as a double


% --- Executes during object creation, after setting all properties.
function FR_3000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_3000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_4000_Callback(hObject, eventdata, handles)
% hObject    handle to FR_4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_4000 as text
%        str2double(get(hObject,'String')) returns contents of FR_4000 as a double


% --- Executes during object creation, after setting all properties.
function FR_4000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_4000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_6000_Callback(hObject, eventdata, handles)
% hObject    handle to FR_6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_6000 as text
%        str2double(get(hObject,'String')) returns contents of FR_6000 as a double


% --- Executes during object creation, after setting all properties.
function FR_6000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_6000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function FR_8000_Callback(hObject, eventdata, handles)
% hObject    handle to FR_8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of FR_8000 as text
%        str2double(get(hObject,'String')) returns contents of FR_8000 as a double


% --- Executes during object creation, after setting all properties.
function FR_8000_CreateFcn(hObject, eventdata, handles)
% hObject    handle to FR_8000 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


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
close all
open Database1.fig


% --------------------------------------------------------------------
function Calibration_Callback(hObject, eventdata, handles)
% hObject    handle to Calibration (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
open Calibration1.fig


% --------------------------------------------------------------------
function Auto_Callback(hObject, eventdata, handles)
% hObject    handle to Auto (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)


% --------------------------------------------------------------------
function Manual_Callback(hObject, eventdata, handles)
% hObject    handle to Manual (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
