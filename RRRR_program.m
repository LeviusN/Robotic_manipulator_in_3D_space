function varargout = RRRR_program(varargin)
%RRRR_PROGRAM MATLAB code file for RRRR_program.fig


% Last Modified by GUIDE v2.5 16-Jan-2020 15:35:47

% Begin initialization code - DO NOT EDIT
gui_Singleton = 1;
gui_State = struct('gui_Name',       mfilename, ...
                   'gui_Singleton',  gui_Singleton, ...
                   'gui_OpeningFcn', @RRRR_program_OpeningFcn, ...
                   'gui_OutputFcn',  @RRRR_program_OutputFcn, ...
                   'gui_LayoutFcn',  [], ...
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


% --- Executes just before RRRR_program is made visible.
function RRRR_program_OpeningFcn(hObject, eventdata, handles, varargin)
% This function has no output args, see OutputFcn.
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
% varargin   unrecognized PropertyName/PropertyValue pairs from the
%            command line (see VARARGIN)

% Choose default command line output for RRRR_program
handles.output = hObject;

% Update handles structure
guidata(hObject, handles);

% UIWAIT makes RRRR_program wait for user response (see UIRESUME)
% uiwait(handles.figure1);


% --- Outputs from this function are returned to the command line.
function varargout = RRRR_program_OutputFcn(hObject, eventdata, handles)
% varargout  cell array for returning output args (see VARARGOUT);
% hObject    handle to figure
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Get default command line output from handles structure
varargout{1} = handles.output;



function q1_Callback(hObject, eventdata, handles)
% hObject    handle to q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q1 as text
%        str2double(get(hObject,'String')) returns contents of q1 as a double

% --- Executes during object creation, after setting all properties.
function q1_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q1 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q2_Callback(hObject, eventdata, handles)
% hObject    handle to q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q2 as text
%        str2double(get(hObject,'String')) returns contents of q2 as a double


% --- Executes during object creation, after setting all properties.
function q2_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q3_Callback(hObject, eventdata, handles)
% hObject    handle to q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q3 as text
%        str2double(get(hObject,'String')) returns contents of q3 as a double


% --- Executes during object creation, after setting all properties.
function q3_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q3 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function q4_Callback(hObject, eventdata, handles)
% hObject    handle to q4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of q4 as text
%        str2double(get(hObject,'String')) returns contents of q4 as a double


% --- Executes during object creation, after setting all properties.
function q4_CreateFcn(hObject, eventdata, handles)
% hObject    handle to q4 (see GCBO)
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
hold off
q1=str2double(handles.q1.String)*pi/180;
q2=str2double(handles.q2.String)*pi/180;
q3=str2double(handles.q3.String)*pi/180;
q4=str2double(handles.q4.String)*pi/180;

L1=3;
L2=1;
L3=1;
L4=1;


[ X ] = fkine3D( q1,q2,q3,q4,L1,L2,L3,L4 );
    x4=X(1,1);
    y4=X(2,1);
    z4=X(3,1);
    
    x3=X(1,2);
    y3=X(2,2);
    z3=X(3,2);
    
    x2=X(1,3);
    y2=X(2,3);
    z2=X(3,3);
    
    x1=X(1,4);
    y1=X(2,4);
    z1=X(3,4);
    plot3([0 x1 x2 x3 x4],[0 y1 y2 y3 y4],[0 z1 z2 z3 z4],'b-','LineWidth',3);
    hold on
    plot3(X(1,1),X(2,1),X(3,1),'r*')
    axis([-3 3 -3 3 0 6])
    patch([-3,3,3,-3],[-3,-3,3,3],[0,0,0,0],'green')
    hold on
    grid on
    val=get(handles.prac_plocha,'value');
if val==1
    [x,y,z]=sphere;
    h=surf(3*x,3*y,3*(z+1));
    alpha(h,0.1);
end

function xs_Callback(hObject, eventdata, handles)
% hObject    handle to xs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of xs as text
%        str2double(get(hObject,'String')) returns contents of xs as a double


% --- Executes during object creation, after setting all properties.
function xs_CreateFcn(hObject, eventdata, handles)
% hObject    handle to xs (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function ys_Callback(hObject, eventdata, handles)
% hObject    handle to ys (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)

% Hints: get(hObject,'String') returns contents of ys as text
%        str2double(get(hObject,'String')) returns contents of ys as a double


% --- Executes during object creation, after setting all properties.
function ys_CreateFcn(hObject, eventdata, handles)
% hObject    handle to ys (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    empty - handles not created until after all CreateFcns called

% Hint: edit controls usually have a white background on Windows.
%       See ISPC and COMPUTER.
if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zs_Callback(hObject, eventdata, handles)

function zs_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton2.
function pushbutton2_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton2 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
hold off
xb=str2double(handles.xs.String);
yb=str2double(handles.ys.String);
zb=str2double(handles.zs.String);
vzdialenost=(xb^2+yb^2+(zb-3)^2)^(1/2);
if vzdialenost>3
    set(handles.text3,'String','bod je daleko')
elseif vzdialenost<=3
    set(handles.text3,'String','bod je v dosahu')
end
Xini=[xb;yb;zb];

L1=3;
L2=1;
L3=1;
L4=1;

%% Now obtaining values from jacobian using iteration
q1=1;
q2=1;
q3=1;
q4=1;

i = 0;
err = 1;

dq=0.01;
pozadovana_presnost = 0.001;
i_max = 100; 

Q(1,1) = q1;
Q(2,1) = q2;
Q(3,1) = q3;
Q(4,1) = q4;

[ X ] = IKINE3Djeden( Q, dq, L1,L2,L3,L4, Xini, i, err, pozadovana_presnost, i_max );
val=get(handles.prac_plocha,'value');
if val==1
    [x,y,z]=sphere;
    h=surf(3*x,3*y,3*(z+1));
    alpha(h,0.1);
end
% --- Executes on button press in pushbutton4.
function pushbutton4_Callback(hObject, eventdata, handles)
% hObject    handle to pushbutton4 (see GCBO)
% eventdata  reserved - to be defined in a future version of MATLAB
% handles    structure with handles and user data (see GUIDATA)
xb=str2double(handles.xs.String);
yb=str2double(handles.ys.String);
zb=str2double(handles.zs.String);

xpre1=str2double(handles.xObs1.String);
ypre1=str2double(handles.yObs1.String);
zpre1=str2double(handles.zObs1.String);

xpre2=str2double(handles.xObs2.String);
ypre2=str2double(handles.yObs2.String);
zpre2=str2double(handles.zObs2.String);

xpre3=str2double(handles.xObs3.String);
ypre3=str2double(handles.yObs3.String);
zpre3=str2double(handles.zObs3.String);

% urcenie ci je daleko bod
vzdialenost=(xb^2+yb^2+(zb-3)^2)^(1/2);
if vzdialenost>3
    set(handles.text3,'String','bod je daleko')
elseif vzdialenost<=3
    set(handles.text3,'String','bod je v dosahu')
end

% Parametre ramena a natocenie na ziskanie testoveho bodu
L1=3;
L2=1;
L3=1;
L4=1;

% 3 prekazka
xpre=[xpre1  xpre2  xpre3];
ypre=[ypre1  ypre2  ypre3];
zpre=[zpre1  zpre2  zpre3];

%%
step=pi/680;

grad=100*ones(1,3);
gradQ4=100;

q1=pi;
q2=pi/4;
q3=-pi/4;
q4=pi/4;
[ q4koniec ] = vypocet4( yb,xb ); % funkcia na ladenie momentalne uz nie je treba

%% Vypocet ramena
while(abs(grad(1))>0.01 || abs(grad(2))>0.01 || abs(grad(3))>0.01)
    %%
    grad(1)=(potencial(q1+step,q2,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4)-potencial(q1,q2,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4))/step;
    grad(2)=(potencial(q1,q2+step,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4)-potencial(q1,q2,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4))/step;
    grad(3)=(potencial(q1,q2,q3+step,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4)-potencial(q1,q2,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4))/step;
    grad(4)=(potencial(q1,q2,q3,q4+step,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4)-potencial(q1,q2,q3,q4,xb,yb,zb,xpre,ypre,zpre,L1,L2,L3,L4))/step;
    %%
    q1=q1-0.01*grad(1);
    q2=q2-0.01*grad(2);
    q3=q3-0.01*grad(3);
    q4=q4-0.01*grad(4);

    %%
    [ X ] = fkine3D( q1,q2,q3,q4,L1,L2,L3,L4 );
    

    plot3(xb,yb,zb,'r*')
    hold on
    plot3(xpre,ypre,zpre,'ro')
    hold on
    grid on
    
    xr4=X(1,1);
    yr4=X(2,1);
    zr4=X(3,1);
    
    xr3=X(1,2);
    yr3=X(2,2);
    zr3=X(3,2);
    
    xr2=X(1,3);
    yr2=X(2,3);
    zr2=X(3,3);
    
    xr1=X(1,4);
    yr1=X(2,4);
    zr1=X(3,4);
    
    %%
    plot3([0 xr1 xr2 xr3 xr4],[0 yr1 yr2 yr3 yr4],[0 zr1 zr2 zr3 zr4],'LineWidth',3);
    axis([-3 3 -3 3 0 6])
    patch([-3,3,3,-3],[-3,-3,3,3],[0,0,0,0],'green')
    hold off
    pause(0.01)

end
    %Pracovny priestor 
    hold on
    val=get(handles.prac_plocha,'value');
    if val==1
        [x,y,z]=sphere;
        h=surf(3*x,3*y,3*(z+1));
        alpha(h,0.1);
    end
    

    

function xObs1_Callback(hObject, eventdata, handles)

function xObs1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yObs1_Callback(hObject, eventdata, handles)

function yObs1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zObs1_Callback(hObject, eventdata, handles)

function zObs1_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xObs2_Callback(hObject, eventdata, handles)

function xObs2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yObs2_Callback(hObject, eventdata, handles)

function yObs2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zObs2_Callback(hObject, eventdata, handles)

function zObs2_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function xObs3_Callback(hObject, eventdata, handles)

function xObs3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function yObs3_Callback(hObject, eventdata, handles)


function yObs3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end



function zObs3_Callback(hObject, eventdata, handles)

function zObs3_CreateFcn(hObject, eventdata, handles)

if ispc && isequal(get(hObject,'BackgroundColor'), get(0,'defaultUicontrolBackgroundColor'))
    set(hObject,'BackgroundColor','white');
end


% --- Executes on button press in pushbutton1.
function pushbutton1_Callback(hObject, eventdata, handles)



% --- Executes on button press in prac_plocha.
function prac_plocha_Callback(hObject, eventdata, handles)



% --- Executes on button press in prac_plocha.
function checkbox1_Callback(hObject, eventdata, handles)

val=get(handles.prac_plocha,'value');

% --- Executes during object creation, after setting all properties.
function text3_CreateFcn(hObject, eventdata, handles)



% --- Executes on button press in pushbutton8.
function pushbutton8_Callback(hObject, eventdata, handles)


cla (handles.axes1,'reset')

