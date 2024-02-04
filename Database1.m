function varargout = Database1(varargin)
% DATABASE1 MATLAB code for Database1.fig
%      DATABASE1, by itself, creates a new DATABASE1 or raises the existing
%      singleton*.
%
%      H = DATABASE1 returns the handle to a new DATABASE1 or the handle to
%      the existing singleton*.
%
%      DATABASE1('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in DATABASE1.M with the given input arguments.
%
%      DATABASE1('Property','Value',...) creates a new DATABASE1 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before Database1_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to Database1_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help Database1

% Last Modified by GUIDE v2.5 01-Apr-2014 02:10:51

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @Database1_OpeningFcn, ...
                   'gui_OutputFcn',  @Database1_OutputFcn, ...
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


% --- Executes just before Database1 is made visible.
function Database1_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to Database1 (see VARARGIN)

% Choose default command line output for Database1
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes Database1 wait for user response (see UIRESUME)
% uiwait(handles.figure1);
%
a=date;
set(handles.Date2,'string',a);

% --- Outputs from this function are returned to the command line.
function varargout = Database1_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;


% --------------------------------------------------------------------
function Testing_Callback(hObject, eventdata, handles)
% hObject    handle to Testing (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close all
open Main1_2.fig

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



function Search_Callback(hObject, eventdata, handles)
% hObject    handle to Search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Search as text
%        str2double(get(hObject,'String')) returns contents of Search as a double


% --- Executes during object creation, after setting all properties.
function Search_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Date2_Callback(hObject, eventdata, handles)
% hObject    handle to Date2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Date2 as text
%        str2double(get(hObject,'String')) returns contents of Date2 as a double


% --- Executes during object creation, after setting all properties.
function Date2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Date2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in S_Search.
function S_Search_Callback(hObject, eventdata, handles)
% hObject    handle to S_Search (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
plot(1:10)

% --- Executes on button press in S_Show.
function S_Show_Callback(hObject, eventdata, handles)
% hObject    handle to S_Show (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
cla

% --- Executes on button press in S_EXIT.
function S_EXIT_Callback(hObject, eventdata, handles)
% hObject    handle to S_EXIT (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close


function Name_Callback(hObject, eventdata, handles)
% hObject    handle to Name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Name as text
%        str2double(get(hObject,'String')) returns contents of Name as a double


% --- Executes during object creation, after setting all properties.
function Name_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Name (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Height_Callback(hObject, eventdata, handles)
% hObject    handle to Height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Height as text
%        str2double(get(hObject,'String')) returns contents of Height as a double


% --- Executes during object creation, after setting all properties.
function Height_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Height (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Weight_Callback(hObject, eventdata, handles)
% hObject    handle to Weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Weight as text
%        str2double(get(hObject,'String')) returns contents of Weight as a double


% --- Executes during object creation, after setting all properties.
function Weight_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Weight (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Gender_Callback(hObject, eventdata, handles)
% hObject    handle to Gender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Gender as text
%        str2double(get(hObject,'String')) returns contents of Gender as a double


% --- Executes during object creation, after setting all properties.
function Gender_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Gender (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function Date1_Callback(hObject, eventdata, handles)
% hObject    handle to Date1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of Date1 as text
%        str2double(get(hObject,'String')) returns contents of Date1 as a double


% --- Executes during object creation, after setting all properties.
function Date1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to Date1 (see GCBO)
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
