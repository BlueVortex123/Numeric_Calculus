function varargout = tema3(varargin)
% TEMA3 MATLAB code for tema3.fig
%      TEMA3, by itself, creates a new TEMA3 or raises the existing
%      singleton*.
%
%      H = TEMA3 returns the handle to a new TEMA3 or the handle to
%      the existing singleton*.
%
%      TEMA3('CALLBACK',hObject,eventData,handles,...) calls the local
%      function named CALLBACK in TEMA3.M with the given input arguments.
%
%      TEMA3('Property','Value',...) creates a new TEMA3 or raises the
%      existing singleton*.  Starting from the left, property value pairs are
%      applied to the GUI before tema3_OpeningFcn gets called.  An
%      unrecognized property name or invalid value makes property application
%      stop.  All inputs are passed to tema3_OpeningFcn via varargin.
%
%      *See GUI Options on GUIDE's Tools menu.  Choose "GUI allows only one
%      instance to run (singleton)".
%
% See also: GUIDE, GUIDATA, GUIHANDLES

% Edit the above text to modify the response to help tema3


% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @tema3_OpeningFcn, ...
                   'gui_OutputFcn',  @tema3_OutputFcn, ...
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


% --- Executes just before tema3 is made visible.
function tema3_OpeningFcn(hObject, ~, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   command line arguments to tema3 (see VARARGIN)

% Choose default command line output for tema3
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes tema3 wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = tema3_OutputFcn(hObject, eventdata, handles) 
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function functia_Callback(hObject, eventdata, handles)
% hObject    handle to functia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of functia as text
%        str2double(get(hObject,'String')) returns contents of functia as a double


% --- Executes during object creation, after setting all properties.
function functia_CreateFcn(hObject, eventdata, handles)
% hObject    handle to functia (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function a_Callback(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of a as text
%        str2double(get(hObject,'String')) returns contents of a as a double


% --- Executes during object creation, after setting all properties.
function a_CreateFcn(hObject, eventdata, handles)
% hObject    handle to a (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function b_Callback(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of b as text
%        str2double(get(hObject,'String')) returns contents of b as a double


% --- Executes during object creation, after setting all properties.
function b_CreateFcn(hObject, eventdata, handles)
% hObject    handle to b (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end

% --- Executes on button press in Afiseaza.
function Afiseaza_Callback(hObject ,eventData, handles)
% hObject    handle to Afiseaza (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
f=1;
z=1;
p=1;
if get(handles.btngroup,'SelectedObject')==handles.newton
        close
        newton
        return
    end
if isnan(str2double(get(handles.a,'String')))
    warndlg('Introduceti o valoare numerica lui a','valoare numerica')
    set(handles.a,'String','')
    z=0;
else
    z=1;
end
if isnan(str2double(get(handles.b,'String')))
    warndlg('Introduceti o valoare numerica lui b','valoare numerica')
    set(handles.b,'String','')
    p=0;
else
    p=1;
end
if p==1 && z==1 
    if str2double(get(handles.b,'String')) < str2double(get(handles.a,'String'))
        warndlg('Introduceti o valoare numerica lui a mai mica decat a lui b','valoare numerica corecta')
        set(handles.b,'String','')
        set(handles.a,'String','')
        p=0;
    else
        if isempty(get(handles.functia,'String'))
        warndlg('Introduceti o functie','Functie')    
        f=0;
        elseif ~funverif(get(handles.functia,'String'),str2double(get(handles.a,'String')),str2double(get(handles.b,'String')))
        warndlg('Introduceti o functie corecta','Functie corecta')
        set(handles.functia,'String','')
        f=0;
        else
        f=1;
        end
        p=1;
    end
end
if f==1 && z==1 && p==1
    if get(handles.btngroup,'SelectedObject')==handles.lagrange
          lagrange(get(handles.functia,'String'),str2double(get(handles.a,'String')),str2double(get(handles.b,'String')))
    elseif get(handles.btngroup,'SelectedObject')==handles.bernstein
        bern(get(handles.functia,'String'),str2double(get(handles.a,'String')),str2double(get(handles.b,'String')))
    end
end
    


% --- Executes on button press in newton.
function newton_Callback(hObject, eventdata, handles)
% hObject    handle to newton (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of newton
    set(handles.Afiseaza,'String','Open')


% --- Executes on button press in lagrange.
function lagrange_Callback(hObject, eventdata, handles)
% hObject    handle to lagrange (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of lagrange
set(handles.Afiseaza,'String','Deseneaza')


% --- Executes on button press in bernstein.
function bernstein_Callback(hObject, eventdata, handles)
% hObject    handle to bernstein (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hint: get(hObject,'Value') returns toggle state of bernstein
set(handles.Afiseaza,'String','Deseneaza')
