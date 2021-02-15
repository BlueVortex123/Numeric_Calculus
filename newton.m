function varargout = newton(varargin)
% NEWTON MATLAB code for newton.fig
%      NEWTON, by itself, creates a new NEWTON or raises the existing
%      singleton*.
%
%      H = NEWTON returns the handle to a new NEWTON or the handle to
%      the existing singleton*.
%
%      NEWTON('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in NEWTON.M with the given input arguments.
%
%      NEWTON('Property','Value',...) creates a new NEWTON or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before newton_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to newton_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help newton

% Last Modified by GUIDE v2.5 19-Jun-2018 06:06:42

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @newton_OpeningFcn, ...
                   'gui_OutputFcn',  @newton_OutputFcn, ...
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


% --- Executes just before newton is made visible.
function newton_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to newton (see VARARGIN)

% Choose default command line output for newton
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes newton wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = newton_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function edit1_Callback(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit1 as text
%        str2double(get(hObject,'String')) returns contents of edit1 as a double


% --- Executes during object creation, after setting all properties.
function edit1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit2_Callback(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit2 as text
%        str2double(get(hObject,'String')) returns contents of edit2 as a double


% --- Executes during object creation, after setting all properties.
function edit2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit3_Callback(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit3 as text
%        str2double(get(hObject,'String')) returns contents of edit3 as a double


% --- Executes during object creation, after setting all properties.
function edit3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit4_Callback(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit4 as text
%        str2double(get(hObject,'String')) returns contents of edit4 as a double


% --- Executes during object creation, after setting all properties.
function edit4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function edit5_Callback(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit5 as text
%        str2double(get(hObject,'String')) returns contents of edit5 as a double


% --- Executes during object creation, after setting all properties.
function edit5_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit5 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in back.
function back_Callback(hObject, eventdata, handles)
% hObject    handle to back (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
close
tema3

% --- Executes on button press in afiseaza.
function afiseaza_Callback(hObject, eventdata, handles)
% hObject    handle to afiseaza (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=1;
p=1;
c=1;
d=1;
v=1;
b=1;
if isnan(str2double(get(handles.edit1,'String')))
    warndlg('Introduceti o valoare numerica lui x_a','Valoare numerica')
    set(handles.edit1,'String','')
    z=0;
else
    z=1;
end
if isnan(str2double(get(handles.edit2,'String')))
    warndlg('Introduceti o valoare numerica lui x_b','Valoare numerica')
    set(handles.edit2,'String','')
    p=0;
else
    p=1;
end
if isnan(str2double(get(handles.edit3,'String')))
    warndlg('Introduceti o valoare numerica lui y_a','Valoare numerica')
    set(handles.edit3,'String','')
    c=0;
else
    c=1;
end
if isnan(str2double(get(handles.edit4,'String')))
    warndlg('Introduceti o valoare numerica lui y_b','Valoare numerica')
    set(handles.edit4,'String','')
    d=0;
else
    d=1;
end
if isnan(str2double(get(handles.edit5,'String')))
    warndlg('Introduceti o valoare numerica lui xi_a','Valoare numerica')
    set(handles.edit5,'String','')
    v=0;
else
    v=1;
end
if isnan(str2double(get(handles.edit6,'String')))
    warndlg('Introduceti o valoare numerica lui xi_b','Valoare numerica')
    set(handles.edit6,'String','')
    b=0;
else
    b=1;
end
if v==1 && b==1
    if str2double(get(handles.edit6,'String'))<str2double(get(handles.edit5,'String'))
        warndlg('Introduceti o valoare numerica lui xi_a < xi_b','Valoare numerica corecta')
        set(handles.edit5,'String','')
        set(handles.edit6,'String','')
        v=0;
    end
end
if z==1 && p==1
    if str2double(get(handles.edit2,'String'))<str2double(get(handles.edit1,'String'))
        warndlg('Introduceti o valoare numerica lui x_a < x_b','Valoare numerica corecta')
        set(handles.edit1,'String','')
        set(handles.edit2,'String','')
        z=0;
    end
end
if c==1 && d==1
    if str2double(get(handles.edit4,'String'))<str2double(get(handles.edit3,'String'))
        warndlg('Introduceti o valoare numerica lui y_a < y_b','Valoare numerica corecta')
        set(handles.edit3,'String','')
        set(handles.edit4,'String','')
        c=0;
    end
end
if z==1 && p==1 && c==1 && d==1 && v==1 && b==1
    if str2double(get(handles.edit2,'String'))-str2double(get(handles.edit1,'String'))~=str2double(get(handles.edit4,'String'))-str2double(get(handles.edit3,'String'))
        warndlg('Introduceti intervale de aceeasi dimensiune','Valoari corecte')
        set(handles.edit1,'String','')
        set(handles.edit2,'String','')
        set(handles.edit3,'String','')
        set(handles.edit4,'String','')
        set(handles.edit5,'String','')
        set(handles.edit6,'String','')
    else
        x=str2double(get(handles.edit1,'String')):0.1:str2double(get(handles.edit2,'String'));
        y=str2double(get(handles.edit3,'String')):0.1:str2double(get(handles.edit4,'String'));
        xi=str2double(get(handles.edit5,'String')):0.1:str2double(get(handles.edit6,'String'));
        [yi,c]=polNewton(x,y,xi);
        plot(x,y,'ro',xi,yi) 
    end
end



function edit6_Callback(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of edit6 as text
%        str2double(get(hObject,'String')) returns contents of edit6 as a double


% --- Executes during object creation, after setting all properties.
function edit6_CreateFcn(hObject, eventdata, handles)
% hObject    handle to edit6 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton3.
function pushbutton3_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
z=1;
p=1;
c=1;
d=1;
v=1;
b=1;
if isnan(str2double(get(handles.edit1,'String')))
    warndlg('Introduceti o valoare numerica lui x_a','Valoare numerica')
    set(handles.edit1,'String','')
    z=0;
else
    z=1;
end
if isnan(str2double(get(handles.edit2,'String')))
    warndlg('Introduceti o valoare numerica lui x_b','Valoare numerica')
    set(handles.edit2,'String','')
    p=0;
else
    p=1;
end
if isnan(str2double(get(handles.edit3,'String')))
    warndlg('Introduceti o valoare numerica lui y_a','Valoare numerica')
    set(handles.edit3,'String','')
    c=0;
else
    c=1;
end
if isnan(str2double(get(handles.edit4,'String')))
    warndlg('Introduceti o valoare numerica lui y_b','Valoare numerica')
    set(handles.edit4,'String','')
    d=0;
else
    d=1;
end
if isnan(str2double(get(handles.edit5,'String')))
    warndlg('Introduceti o valoare numerica lui xi_a','Valoare numerica')
    set(handles.edit5,'String','')
    v=0;
else
    v=1;
end
if isnan(str2double(get(handles.edit6,'String')))
    warndlg('Introduceti o valoare numerica lui xi_b','Valoare numerica')
    set(handles.edit6,'String','')
    b=0;
else
    b=1;
end
if v==1 && b==1
    if str2double(get(handles.edit6,'String'))<str2double(get(handles.edit5,'String'))
        warndlg('Introduceti o valoare numerica lui xi_a < xi_b','Valoare numerica corecta')
        set(handles.edit5,'String','')
        set(handles.edit6,'String','')
        v=0;
    end
end
if z==1 && p==1
    if str2double(get(handles.edit2,'String'))<str2double(get(handles.edit1,'String'))
        warndlg('Introduceti o valoare numerica lui x_a < x_b','Valoare numerica corecta')
        set(handles.edit1,'String','')
        set(handles.edit2,'String','')
        z=0;
    end
end
if c==1 && d==1
    if str2double(get(handles.edit4,'String'))<str2double(get(handles.edit3,'String'))
        warndlg('Introduceti o valoare numerica lui y_a < y_b','Valoare numerica corecta')
        set(handles.edit3,'String','')
        set(handles.edit4,'String','')
        c=0;
    end
end
if z==1 && p==1 && c==1 && d==1 && v==1 && b==1
    if str2double(get(handles.edit2,'String'))-str2double(get(handles.edit1,'String'))~=str2double(get(handles.edit4,'String'))-str2double(get(handles.edit3,'String'))
        warndlg('Introduceti intervale de aceeasi dimensiune','Valoari corecte')
        set(handles.edit1,'String','')
        set(handles.edit2,'String','')
        set(handles.edit3,'String','')
        set(handles.edit4,'String','')
        set(handles.edit5,'String','')
        set(handles.edit6,'String','')
    else
        x=str2double(get(handles.edit1,'String')):0.1:str2double(get(handles.edit2,'String'));
        y=str2double(get(handles.edit3,'String')):0.1:str2double(get(handles.edit4,'String'));
        xi=str2double(get(handles.edit5,'String')):0.1:str2double(get(handles.edit6,'String'));
        yi=spline(x,y,xi);
        plot(x,y,'ro',xi,yi) 
    end
end
