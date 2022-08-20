classdef complete_app_exported < matlab.apps.AppBase

    % Properties that correspond to app components
    properties (Access = public)
        UIFigure                        matlab.ui.Figure
        TabGroup                        matlab.ui.container.TabGroup
        HomeTab                         matlab.ui.container.Tab
        InfoButtonHome                  matlab.ui.control.Button
        GlossaryButton                  matlab.ui.control.Button
        ContentsButton                  matlab.ui.control.Button
        Image                           matlab.ui.control.Image
        TitleTextArea                   matlab.ui.control.TextArea
        TitleTextAreaLabel              matlab.ui.control.Label
        Tab1                            matlab.ui.container.Tab
        AngleofInternalFrictiondegreesSlider  matlab.ui.control.Slider
        AngleofInternalFrictiondegreesLabel  matlab.ui.control.Label
        HillslopeAngledegreesSlider     matlab.ui.control.Slider
        HillslopeAngledegreesLabel      matlab.ui.control.Label
        SaturationSlider                matlab.ui.control.Slider
        SaturationLabel_2               matlab.ui.control.Label
        UnitWeightkNm3Slider            matlab.ui.control.Slider
        UnitWeightkNm3Label             matlab.ui.control.Label
        DepthmSlider                    matlab.ui.control.Slider
        DepthmSliderLabel               matlab.ui.control.Label
        CohesionkPaSlider               matlab.ui.control.Slider
        CohesionkPaSliderLabel          matlab.ui.control.Label
        SfLamp1                         matlab.ui.control.Lamp
        SfLamp1Label                    matlab.ui.control.Label
        SfGauge1                        matlab.ui.control.LinearGauge
        FactorofSafetyLabel_2           matlab.ui.control.Label
        RunButton                       matlab.ui.control.Button
        InfoButton1                     matlab.ui.control.Button
        Tab2                            matlab.ui.container.Tab
        UnitWeightkNm3Gauge             matlab.ui.control.LinearGauge
        UnitWeightkNm3GaugeLabel        matlab.ui.control.Label
        InternalAngledegreesGauge       matlab.ui.control.LinearGauge
        InternalAngledegreesGaugeLabel  matlab.ui.control.Label
        CohesionkPaGauge                matlab.ui.control.LinearGauge
        CohesionkPaGaugeLabel           matlab.ui.control.Label
        SoilTypeDropDown                matlab.ui.control.DropDown
        SoilTypeDropDownLabel           matlab.ui.control.Label
        HillslopeAngleSlider2           matlab.ui.control.Slider
        HillslopeAngledegreesLabel_2    matlab.ui.control.Label
        SaturationSlider2               matlab.ui.control.Slider
        SaturationLabel_3               matlab.ui.control.Label
        DepthSlider2                    matlab.ui.control.Slider
        DepthmLabel                     matlab.ui.control.Label
        SfLamp2                         matlab.ui.control.Lamp
        SfLamp1_2Label                  matlab.ui.control.Label
        SfGauge2                        matlab.ui.control.LinearGauge
        FactorofSafetyLabel             matlab.ui.control.Label
        RunButton2                      matlab.ui.control.Button
        InfoButton2                     matlab.ui.control.Button
        Tab3                            matlab.ui.container.Tab
        SfLamp3                         matlab.ui.control.Lamp
        SfLamp1_2Label_2                matlab.ui.control.Label
        SfGauge3                        matlab.ui.control.LinearGauge
        FactorofSafetyLabel_3           matlab.ui.control.Label
        InternalAngledegreesEditField   matlab.ui.control.NumericEditField
        InternalAngledegreesEditFieldLabel  matlab.ui.control.Label
        SaturationEditField             matlab.ui.control.NumericEditField
        SaturationLabel_4               matlab.ui.control.Label
        HillslopeangledegreesEditField  matlab.ui.control.NumericEditField
        HillslopeangledegreesEditFieldLabel  matlab.ui.control.Label
        UnitWeightkNm3EditField         matlab.ui.control.NumericEditField
        UnitWeightkNm3EditFieldLabel    matlab.ui.control.Label
        DepthmEditField                 matlab.ui.control.NumericEditField
        DepthmLabel_2                   matlab.ui.control.Label
        CohesionkPaEditField            matlab.ui.control.NumericEditField
        CohesionkPaEditFieldLabel       matlab.ui.control.Label
        XVariableDropDown               matlab.ui.control.DropDown
        XVariableDropDownLabel          matlab.ui.control.Label
        UpdateButton3                   matlab.ui.control.Button
        InfoButton3                     matlab.ui.control.Button
        UIAxes                          matlab.ui.control.UIAxes
        Tab4                            matlab.ui.container.Tab
        HillslopeDropDown               matlab.ui.control.DropDown
        HillslopeDropDownLabel          matlab.ui.control.Label
        AngleofInternalFrictionGauge4   matlab.ui.control.LinearGauge
        AngleofInternalFrictionLabel    matlab.ui.control.Label
        HillslopeAngleGauge4            matlab.ui.control.LinearGauge
        HillslopeAngleLabel             matlab.ui.control.Label
        SaturationGauge4                matlab.ui.control.LinearGauge
        SaturationLabel                 matlab.ui.control.Label
        DepthGauge4                     matlab.ui.control.LinearGauge
        DepthLabel                      matlab.ui.control.Label
        UnitWeightGauge4                matlab.ui.control.LinearGauge
        UnitWeightLabel                 matlab.ui.control.Label
        CohesionGauge4                  matlab.ui.control.LinearGauge
        CohesionLabel                   matlab.ui.control.Label
        SfLamp4                         matlab.ui.control.Lamp
        SfLamp1_2Label_3                matlab.ui.control.Label
        SfGauge4                        matlab.ui.control.LinearGauge
        FactorofSafetyLabel_4           matlab.ui.control.Label
        RunButton4                      matlab.ui.control.Button
        InfoButton4                     matlab.ui.control.Button
        Tab5                            matlab.ui.container.Tab
        Table2VariablevaluesfordifferentexamplehillslopesLabel  matlab.ui.control.Label
        Table1VariablevaluesfordifferentsoiltypesLabel  matlab.ui.control.Label
        Image2_2                        matlab.ui.control.Image
        Image2                          matlab.ui.control.Image
        InfoButton5                     matlab.ui.control.Button
    end

    
    properties (Access = private)
        % Home
        messageInfoHome = {'This tab shows the ISSM equation and contains a glossary of symbols.', 'Move through the other tabs and play with the inputs to see how parameters affect the model output.', 'Come back to this tab to remind yourself of the model equation and symbols.', 'Use the "Info" button in the bottom corner of each tab for an explanation on what to do on that tab.'}
        messageContents = {'Home: Model and glossary', 'Tab1: Change input values', 'Tab2: Change hillslope material', 'Tab3: Plot variables', 'Tab4: Change entire hillslopes', 'Tab5: Table of variable values for drop-down options'}
        messageGlossary = {'$S_f$: Factor of Safety', '$c$: Cohesion (kPa)', '$H$: Depth of soil (m)', '$\theta$: Hillslope angle (degrees)', '$m$: Saturation', '$\gamma_w$: Unit weight of water, a constant ($=9.81$kN/m$^3$)', '$\gamma$: Unit weight (kN/m$^3$)', '$\phi$: Angle of internal friction (degrees)', 'Note that unit weight can be calculated by multiplying unit density (kg/m$^3$) by gravity (9.81m/s$^2$)'};

        % Tab1
        messageInfo1 = {'Change the input values and press "Run" to calculate the Factor of Safety.', 'See how changing each input affects the model output.', 'A green lamp means low risk of landslide, an orange lamp means slight risk of landslide, and a red lamp means high risk of landslide.'}
        phivalue1 = 30 ; 
        thetavalue1 = 45 ;
        cvalue1 = 1; 
        Hvalue1 = 1 ;
        gammavalue1 = 10 ;
        mvalue1 = 0.5 ; 

        % Tab2
        messageInfo2 = {'In reality, some parameters are dependent on each other.', 'Change the input parameters and the soil type to see how this changes some of the other input parameters, and how these interact to affect the model output.', 'Table 1 on Tab5 contains a table showing the variable values for each of the available soil inputs.'}
        mvalue2 = 0.5 ;
        thetavalue2 = 45 ;
        Hvalue2 = 1 ;
        soilvalue2 = 1 ;
        phivalue2 = 38 ;
        cvalue2 = 0 ;
        gammavalue2 = 21 ;

        % Tab3
        messageInfo3 = {'Choose a parameter to plot against the Factor of Safety.' , 'Input values for each of the other parameters.', 'Note that changing the parameter picked as the X variable will have no effect on the plot, but will affect the gauge reading.'}
        mvalue3 = 0.5 ;
        thetavalue3 = 10 ;
        Hvalue3 = 1 ;
        soilvalue3 = 1 ;
        phivalue3 = 38 ;
        cvalue3 = 0 ;
        gammavalue3 = 18 ;
        xvar = '1' ;

        % Tab4
        messageInfo4 = {'This tab contains some examples of the kind of hillslopes you may encounter and choose to model with the ISSM.', 'Pick a hillslope and see how the hillslope conditions affect the factor of safety.' , 'Is the ISSM an appropriate model for all of these slopes?', 'Hillslope 1: A shallow, semi-saturated slope of dense, mixed sand.' ,'Hillslope 2: A very steep, dry gravel slope.', 'Hillslope 3: A near-vertical, wet slope made of very soft clay.', 'Hillslope 4: A relatively steep, semi-saturated slope of mixed grain glacial till.', 'Table 2 on Tab5 contains a table showing the variable values for each of the available example hillslopes.'}
        cvalue4 = 0 ;
        phivalue4 = 38;
        gammavalue4 = 18;
        mvalue4 = 0.5 ;
        thetavalue4 = 15 ;
        Hvalue4 = 1 ;
        hillslopevalue = 1 ;

        % Tab5
        messageInfo5 = {'This tab simply contains the tables of values of the drop-down variables used in Tab 2 and Tab 4.', 'Feel free to refer to these tables rather than manually changing drop-down options to the see input values.'}
    end
    

    % Callbacks that handle component events
    methods (Access = private)

        % Code that executes after component creation
        function startupFcn(app)
            uialert(app.UIFigure, app.messageInfoHome, 'Information - Home', 'Icon', 'info', 'Interpreter', 'latex');
        end

        % Button pushed function: InfoButtonHome
        function InfoButtonHomePushed(app, event)
            uialert(app.UIFigure, app.messageInfoHome, 'Information', "Icon", 'info')
        end

        % Button pushed function: ContentsButton
        function ContentsButtonPushed(app, event)
            uialert(app.UIFigure, app.messageContents, 'Contents', 'Icon', 'info')
        end

        % Button pushed function: GlossaryButton
        function GlossaryButtonPushed(app, event)
            uialert(app.UIFigure, app.messageGlossary, 'Glossary', 'Icon', 'info', 'Interpreter', 'latex');
        end

        % Button pushed function: InfoButton1
        function InfoButton1Pushed(app, event)
            uialert(app.UIFigure, app.messageInfo1, 'Information', 'Icon', 'info')
        end

        % Button pushed function: RunButton
        function RunButtonPushed(app, event)
            app.SfGauge1.Value = infslopem(app.phivalue1, app.thetavalue1, app.cvalue1, app.gammavalue1, app.Hvalue1, app.mvalue1) ;
            if app.SfGauge1.Value > 1.5
                app.SfLamp1.Color = 'g'
            elseif 1<= app.SfGauge1.Value && app.SfGauge1.Value < 1.5
                app.SfLamp1.Color = '#FF8C00'
            else
                app.SfLamp1.Color = 'r'
            end
        end

        % Value changed function: CohesionkPaSlider
        function CohesionkPaSliderValueChanged(app, event)
            app.cvalue1 = app.CohesionkPaSlider.Value;
            
        end

        % Value changed function: DepthmSlider
        function DepthmSliderValueChanged(app, event)
            app.Hvalue1 = app.DepthmSlider.Value;
            
        end

        % Value changed function: UnitWeightkNm3Slider
        function UnitWeightkNm3SliderValueChanged(app, event)
            app.gammavalue1 = app.UnitWeightkNm3Slider.Value;
            
        end

        % Value changed function: SaturationSlider
        function SaturationSliderValueChanged(app, event)
            app.mvalue1 = app.SaturationSlider.Value;
            
        end

        % Value changed function: HillslopeAngledegreesSlider
        function HillslopeAngledegreesSliderValueChanged(app, event)
            app.thetavalue1 = app.HillslopeAngledegreesSlider.Value;
            
        end

        % Value changed function: AngleofInternalFrictiondegreesSlider
        function AngleofInternalFrictiondegreesSliderValueChanged(app, event)
            app.phivalue1 = app.AngleofInternalFrictiondegreesSlider.Value;
            
        end

        % Value changed function: SoilTypeDropDown
        function SoilTypeDropDownValueChanged(app, event)
            app.soilvalue2 = app.SoilTypeDropDown.Value ;
            


        end

        % Button pushed function: InfoButton2
        function InfoButton2Pushed(app, event)
            uialert(app.UIFigure, app.messageInfo2, 'Information', 'Icon', 'info')

        end

        % Button pushed function: RunButton2
        function RunButton2Pushed(app, event)
             if app.soilvalue2 == '1'
                app.cvalue2 = 0 ;
                app.phivalue2 = 38;
                app.gammavalue2 = 18;
             elseif app.soilvalue2 == '2'
                app.cvalue2 = 0 ;
                app.phivalue2 = 20;
                app.gammavalue2 = 20 ;
            elseif app.soilvalue2 == '3'
                app.cvalue2 = 0 ;
                app.phivalue2 = 30;
                app.gammavalue2 = 10 ;
                elseif app.soilvalue2 == '4'
                app.cvalue2 = 0 ;
                app.phivalue2 = 30 ;
                app.gammavalue2 = 16 ;
            elseif app.soilvalue2 == '5'
                app.cvalue2 = 10 ;
                app.phivalue2 = 12;
                app.gammavalue2 = 6 ;
            elseif app.soilvalue2 == '6'
                app.cvalue2 = 70 ;
                app.phivalue2 = 30 ;
                app.gammavalue2 = 17 ;
            elseif app.soilvalue2 == '7'
                app.cvalue2 = 150 ;
                app.phivalue2 = 32 ;
                app.gammavalue2 = 20 ;
            end           
            app.CohesionkPaGauge.Value = app.cvalue2;
            app.InternalAngledegreesGauge.Value = app.phivalue2 ; 
            app.UnitWeightkNm3Gauge.Value = app.gammavalue2 ;
            app.SfGauge2.Value = infslopem(app.phivalue2, app.thetavalue2, app.cvalue2, app.gammavalue2, app.Hvalue2, app.mvalue2) ;
          if app.SfGauge2.Value > 1.5   
                app.SfLamp2.Color = 'g'
            elseif 1<= app.SfGauge2.Value && app.SfGauge2.Value < 1.5
                app.SfLamp2.Color = '#FF8C00'
            else
                app.SfLamp2.Color = 'r'
            end
        end

        % Value changed function: HillslopeAngleSlider2
        function HillslopeAngleSlider2ValueChanged(app, event)
            app.thetavalue2 = app.HillslopeAngleSlider2.Value;
            
        end

        % Value changed function: SaturationSlider2
        function SaturationSlider2ValueChanged(app, event)
            app.mvalue2 = app.SaturationSlider2.Value;
            
        end

        % Value changed function: DepthSlider2
        function DepthSlider2ValueChanged(app, event)
            app.Hvalue2 = app.DepthSlider2.Value;
            
        end

        % Button pushed function: InfoButton3
        function InfoButton3Pushed(app, event)
            uialert(app.UIFigure, app.messageInfo3, 'Information', 'Icon', 'info')
        end

        % Value changed function: InternalAngledegreesEditField
        function InternalAngledegreesEditFieldValueChanged(app, event)
            app.phivalue3 = app.InternalAngledegreesEditField.Value;
            
        end

        % Value changed function: SaturationEditField
        function SaturationEditFieldValueChanged(app, event)
            app.mvalue3 = app.SaturationEditField.Value;
            
        end

        % Value changed function: HillslopeangledegreesEditField
        function HillslopeangledegreesEditFieldValueChanged(app, event)
            app.thetavalue3 = app.HillslopeangledegreesEditField.Value;
            
        end

        % Value changed function: UnitWeightkNm3EditField
        function UnitWeightkNm3EditFieldValueChanged(app, event)
            app.gammavalue3 = app.UnitWeightkNm3EditField.Value;
            
        end

        % Value changed function: DepthmEditField
        function DepthmEditFieldValueChanged(app, event)
            app.Hvalue3 = app.DepthmEditField.Value;
            
        end

        % Value changed function: CohesionkPaEditField
        function CohesionkPaEditFieldValueChanged(app, event)
            app.cvalue3 = app.CohesionkPaEditField.Value;
            
        end

        % Button pushed function: UpdateButton3
        function UpdateButton3Pushed(app, event)
            Y = zeros(1,100) ;
            for i=1:100
            if app.xvar == '1'
                X = linspace(0,20,100) ;
                Y(i) = infslopem(app.phivalue3, app.thetavalue3, X(i), app.gammavalue3, app.Hvalue3, app.mvalue3) ;
                app.UIAxes.XLabel.String = 'Cohesion (kPa)' ;
                app.UIAxes.XTick = [0 5 10 15 20] ;
            elseif app.xvar == '2'
                X = linspace(0,5,100) ;
                Y(i) = infslopem(app.phivalue3, app.thetavalue3, app.cvalue3, app.gammavalue3, X(i), app.mvalue3) ;
                app.UIAxes.XLabel.String = 'Height (m)' ;
                app.UIAxes.XTick = [0 1 2 3 4 5] ;
            elseif app.xvar == '3'
                X = linspace(0,25,100) ;
                Y(i) = infslopem(app.phivalue3, app.thetavalue3, app.cvalue3, X(i), app.Hvalue3, app.mvalue3) ;
                app.UIAxes.XLabel.String = 'Unit Weight (kN/m$^3$)' ;
                app.UIAxes.XLabel.Interpreter = 'latex' ;
                app.UIAxes.XTick = [0 5 10 15 20 25] ;
            elseif app.xvar == '4'
                X=linspace(0,89,100) ;
                Y(i) = infslopem(app.phivalue3, X(i), app.cvalue3, app.gammavalue3, app.Hvalue3, app.mvalue3) ;
                app.UIAxes.XLabel.String = 'Hillslope angle (degrees)' ;
                app.UIAxes.XTick = [0 15 30 45 60 75 90] ;
            elseif app.xvar == '5'
                X=linspace(0,1,100) ;
                Y(i) = infslopem(app.phivalue3, app.thetavalue3, app.cvalue3, app.gammavalue3, app.Hvalue3, X(i)) ;
                app.UIAxes.XLabel.String = 'Saturation' ;
                app.UIAxes.XTick = [0 0.2 0.4 0.6 0.8 1] ;
            elseif app.xvar == '6'
                X=linspace(0,89,100) ;
                Y(i) = infslopem(X(i), app.thetavalue3, app.cvalue3, app.gammavalue3, app.Hvalue3, app.mvalue3) ;
                app.UIAxes.XLabel.String = 'Angle of Internal Friction (degrees)' ;
                app.UIAxes.XTick = [0 30 60 90] ;
            end
    
            plot(app.UIAxes, X, Y) ;
            end
            
            app.SfGauge3.Value = infslopem(app.phivalue3, app.thetavalue3, app.cvalue3, app.gammavalue3, app.Hvalue3, app.mvalue3) ;
          if app.SfGauge3.Value > 1.5   
                app.SfLamp3.Color = 'g'
            elseif 1<= app.SfGauge3.Value && app.SfGauge3.Value < 1.5
                app.SfLamp3.Color = '#FF8C00'
            else
                app.SfLamp3.Color = 'r'
            end
        end

        % Value changed function: XVariableDropDown
        function XVariableDropDownValueChanged(app, event)
            app.xvar = app.XVariableDropDown.Value;
           
        end

        % Value changed function: HillslopeDropDown
        function HillslopeDropDownValueChanged(app, event)
            app.hillslopevalue = app.HillslopeDropDown.Value;
            
            

        end

        % Button pushed function: RunButton4
        function RunButton4Pushed(app, event)
            
            if app.hillslopevalue == '1'
                % gentle-slope, sandy, semi-saturated
                app.cvalue4 = 0 ;
                app.phivalue4 = 38;
                app.gammavalue4 = 18;
                app.mvalue4 = 0.5 ;
                app.thetavalue4 = 10 ;
                app.Hvalue4 = 1 ;
            elseif app.hillslopevalue == '2'
                % steep, gravely, dry
                app.cvalue4 = 0 ;
                app.phivalue4 = 20;
                app.gammavalue4 = 20 ;
                app.mvalue4 = 0.1 ;
                app.thetavalue4 = 40 ;
                app.Hvalue4 = 3 ;
            elseif app.hillslopevalue == '3'
                % near-vertical, v soft clay, wet
                app.cvalue4 = 10 ;
                app.phivalue4 = 12 ;
                app.gammavalue4 = 6 ;
                app.mvalue4 = 1 ;
                app.thetavalue4 = 65 ;
                app.Hvalue4 = 4 ;
            elseif app.hillslopevalue == '4'
                % realtively steep, glacial till, semi-saturated
                app.cvalue4 = 150 ;
                app.phivalue4 = 32 ;
                app.gammavalue4 = 20 ;
                app.mvalue4 = 0.3 ;
                app.thetavalue4 = 25 ;
                app.Hvalue4 = 3 ;
            end

            
            app.AngleofInternalFrictionGauge4.Value = app.phivalue4 ;
            app.HillslopeAngleGauge4.Value = app.thetavalue4 ;
            app.SaturationGauge4.Value = app.mvalue4 ;
            app.DepthGauge4.Value = app.Hvalue4 ;
            app.UnitWeightGauge4.Value = app.gammavalue4 ;
            app.CohesionGauge4.Value = app.cvalue4 ;

            app.SfGauge4.Value = infslopem(app.phivalue4, app.thetavalue4, app.cvalue4, app.gammavalue4, app.Hvalue4, app.mvalue4) ;
          if app.SfGauge4.Value > 1.5   
                app.SfLamp4.Color = 'g'
            elseif 1<= app.SfGauge4.Value && app.SfGauge4.Value < 1.5
                app.SfLamp4.Color = '#FF8C00'
            else
                app.SfLamp4.Color = 'r'
            end
        end

        % Button pushed function: InfoButton4
        function InfoButton4Pushed(app, event)
            uialert(app.UIFigure, app.messageInfo4, 'Information', 'Icon', 'info')
        end

        % Button pushed function: InfoButton5
        function InfoButton5Pushed(app, event)
            uialert(app.UIFigure, app.messageInfo5, 'Information', 'Icon', 'info')
        end
    end

    % Component initialization
    methods (Access = private)

        % Create UIFigure and components
        function createComponents(app)

            % Get the file path for locating images
            pathToMLAPP = fileparts(mfilename('fullpath'));

            % Create UIFigure and hide until all components are created
            app.UIFigure = uifigure('Visible', 'off');
            app.UIFigure.Position = [100 100 952 631];
            app.UIFigure.Name = 'MATLAB App';

            % Create TabGroup
            app.TabGroup = uitabgroup(app.UIFigure);
            app.TabGroup.Position = [0 1 953 631];

            % Create HomeTab
            app.HomeTab = uitab(app.TabGroup);
            app.HomeTab.Title = 'Home';
            app.HomeTab.BackgroundColor = [0.902 0.902 0.902];

            % Create TitleTextAreaLabel
            app.TitleTextAreaLabel = uilabel(app.HomeTab);
            app.TitleTextAreaLabel.BackgroundColor = [0.902 0.902 0.902];
            app.TitleTextAreaLabel.HorizontalAlignment = 'right';
            app.TitleTextAreaLabel.FontName = 'Times New Roman';
            app.TitleTextAreaLabel.FontWeight = 'bold';
            app.TitleTextAreaLabel.Visible = 'off';
            app.TitleTextAreaLabel.Position = [79 520 29 22];
            app.TitleTextAreaLabel.Text = 'Title';

            % Create TitleTextArea
            app.TitleTextArea = uitextarea(app.HomeTab);
            app.TitleTextArea.HorizontalAlignment = 'center';
            app.TitleTextArea.FontName = 'Times New Roman';
            app.TitleTextArea.FontSize = 36;
            app.TitleTextArea.FontWeight = 'bold';
            app.TitleTextArea.Position = [123 446 726 98];
            app.TitleTextArea.Value = {'Interactive Infinite Slope Stability Model App'; '(IISSM-APP)'};

            % Create Image
            app.Image = uiimage(app.HomeTab);
            app.Image.Position = [181 158 595 291];
            app.Image.ImageSource = fullfile(pathToMLAPP, 'ISSM_eq2.jpg');

            % Create ContentsButton
            app.ContentsButton = uibutton(app.HomeTab, 'push');
            app.ContentsButton.ButtonPushedFcn = createCallbackFcn(app, @ContentsButtonPushed, true);
            app.ContentsButton.BackgroundColor = [1 1 1];
            app.ContentsButton.FontName = 'Times New Roman';
            app.ContentsButton.FontSize = 20;
            app.ContentsButton.Position = [81 74 180 80];
            app.ContentsButton.Text = 'Contents';

            % Create GlossaryButton
            app.GlossaryButton = uibutton(app.HomeTab, 'push');
            app.GlossaryButton.ButtonPushedFcn = createCallbackFcn(app, @GlossaryButtonPushed, true);
            app.GlossaryButton.BackgroundColor = [1 1 1];
            app.GlossaryButton.FontName = 'Times New Roman';
            app.GlossaryButton.FontSize = 20;
            app.GlossaryButton.Position = [401 74 180 80];
            app.GlossaryButton.Text = 'Glossary';

            % Create InfoButtonHome
            app.InfoButtonHome = uibutton(app.HomeTab, 'push');
            app.InfoButtonHome.ButtonPushedFcn = createCallbackFcn(app, @InfoButtonHomePushed, true);
            app.InfoButtonHome.BackgroundColor = [1 1 1];
            app.InfoButtonHome.FontName = 'Times New Roman';
            app.InfoButtonHome.FontSize = 20;
            app.InfoButtonHome.Position = [701 74 180 80];
            app.InfoButtonHome.Text = 'Info';

            % Create Tab1
            app.Tab1 = uitab(app.TabGroup);
            app.Tab1.Title = 'Tab1';
            app.Tab1.BackgroundColor = [0.902 0.902 0.902];

            % Create InfoButton1
            app.InfoButton1 = uibutton(app.Tab1, 'push');
            app.InfoButton1.ButtonPushedFcn = createCallbackFcn(app, @InfoButton1Pushed, true);
            app.InfoButton1.BackgroundColor = [1 1 1];
            app.InfoButton1.FontName = 'Times New Roman';
            app.InfoButton1.Position = [806 42 106 47];
            app.InfoButton1.Text = 'Info';

            % Create RunButton
            app.RunButton = uibutton(app.Tab1, 'push');
            app.RunButton.ButtonPushedFcn = createCallbackFcn(app, @RunButtonPushed, true);
            app.RunButton.BackgroundColor = [1 1 1];
            app.RunButton.FontName = 'Times New Roman';
            app.RunButton.FontSize = 24;
            app.RunButton.Position = [456 209 127 39];
            app.RunButton.Text = 'Run';

            % Create FactorofSafetyLabel_2
            app.FactorofSafetyLabel_2 = uilabel(app.Tab1);
            app.FactorofSafetyLabel_2.HorizontalAlignment = 'center';
            app.FactorofSafetyLabel_2.FontName = 'Times New Roman';
            app.FactorofSafetyLabel_2.FontSize = 24;
            app.FactorofSafetyLabel_2.Position = [443 96 160 32];
            app.FactorofSafetyLabel_2.Text = 'Factor of Safety';

            % Create SfGauge1
            app.SfGauge1 = uigauge(app.Tab1, 'linear');
            app.SfGauge1.Limits = [0 5];
            app.SfGauge1.MajorTicks = [0 1 2 3 4 5];
            app.SfGauge1.MajorTickLabels = {'0', '1', '2', '3', '4', '5+'};
            app.SfGauge1.MinorTicks = [0.2 0.4 0.6 0.8 1.2 1.4 1.6 1.8 2.2 2.4 2.6 2.8 3.2 3.4 3.6 3.8 4.2 4.4 4.6 4.8];
            app.SfGauge1.FontName = 'Times New Roman';
            app.SfGauge1.Position = [169 143 702 41];

            % Create SfLamp1Label
            app.SfLamp1Label = uilabel(app.Tab1);
            app.SfLamp1Label.HorizontalAlignment = 'right';
            app.SfLamp1Label.Visible = 'off';
            app.SfLamp1Label.Position = [26 151 54 22];
            app.SfLamp1Label.Text = 'SfLamp1';

            % Create SfLamp1
            app.SfLamp1 = uilamp(app.Tab1);
            app.SfLamp1.Position = [95 142 40 40];

            % Create CohesionkPaSliderLabel
            app.CohesionkPaSliderLabel = uilabel(app.Tab1);
            app.CohesionkPaSliderLabel.Interpreter = 'latex';
            app.CohesionkPaSliderLabel.HorizontalAlignment = 'right';
            app.CohesionkPaSliderLabel.FontName = 'Times New Roman';
            app.CohesionkPaSliderLabel.FontSize = 16;
            app.CohesionkPaSliderLabel.Position = [26 522 137 22];
            app.CohesionkPaSliderLabel.Text = 'Cohesion (kPa):';

            % Create CohesionkPaSlider
            app.CohesionkPaSlider = uislider(app.Tab1);
            app.CohesionkPaSlider.Limits = [0 150];
            app.CohesionkPaSlider.MajorTicks = [0 50 100 150];
            app.CohesionkPaSlider.ValueChangedFcn = createCallbackFcn(app, @CohesionkPaSliderValueChanged, true);
            app.CohesionkPaSlider.MinorTicks = [25 75 125];
            app.CohesionkPaSlider.FontName = 'Times New Roman';
            app.CohesionkPaSlider.Position = [184 531 198 3];

            % Create DepthmSliderLabel
            app.DepthmSliderLabel = uilabel(app.Tab1);
            app.DepthmSliderLabel.Interpreter = 'latex';
            app.DepthmSliderLabel.HorizontalAlignment = 'right';
            app.DepthmSliderLabel.FontName = 'Times New Roman';
            app.DepthmSliderLabel.FontSize = 16;
            app.DepthmSliderLabel.Position = [75 446 88 22];
            app.DepthmSliderLabel.Text = 'Depth (m):';

            % Create DepthmSlider
            app.DepthmSlider = uislider(app.Tab1);
            app.DepthmSlider.Limits = [0 5];
            app.DepthmSlider.MajorTicks = [0 1 2 3 4 5];
            app.DepthmSlider.ValueChangedFcn = createCallbackFcn(app, @DepthmSliderValueChanged, true);
            app.DepthmSlider.MinorTicks = [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
            app.DepthmSlider.FontName = 'Times New Roman';
            app.DepthmSlider.Position = [184 455 198 3];

            % Create UnitWeightkNm3Label
            app.UnitWeightkNm3Label = uilabel(app.Tab1);
            app.UnitWeightkNm3Label.Interpreter = 'latex';
            app.UnitWeightkNm3Label.HorizontalAlignment = 'right';
            app.UnitWeightkNm3Label.FontSize = 16;
            app.UnitWeightkNm3Label.Position = [2 366 160 24];
            app.UnitWeightkNm3Label.Text = 'Unit Weight (kN/m$^3$)';

            % Create UnitWeightkNm3Slider
            app.UnitWeightkNm3Slider = uislider(app.Tab1);
            app.UnitWeightkNm3Slider.Limits = [0 25];
            app.UnitWeightkNm3Slider.MajorTicks = [0 5 10 15 20 25];
            app.UnitWeightkNm3Slider.ValueChangedFcn = createCallbackFcn(app, @UnitWeightkNm3SliderValueChanged, true);
            app.UnitWeightkNm3Slider.MinorTicks = [2.5 7.5 12.5 17.5 22.5];
            app.UnitWeightkNm3Slider.Position = [183 377 199 3];

            % Create SaturationLabel_2
            app.SaturationLabel_2 = uilabel(app.Tab1);
            app.SaturationLabel_2.Interpreter = 'latex';
            app.SaturationLabel_2.HorizontalAlignment = 'right';
            app.SaturationLabel_2.FontName = 'Times New Roman';
            app.SaturationLabel_2.FontSize = 16;
            app.SaturationLabel_2.Position = [599 524 88 22];
            app.SaturationLabel_2.Text = 'Saturation:';

            % Create SaturationSlider
            app.SaturationSlider = uislider(app.Tab1);
            app.SaturationSlider.Limits = [0 1];
            app.SaturationSlider.MajorTicks = [0 0.2 0.4 0.6 0.8 1];
            app.SaturationSlider.ValueChangedFcn = createCallbackFcn(app, @SaturationSliderValueChanged, true);
            app.SaturationSlider.MinorTicks = [0.1 0.3 0.5 0.7 0.9];
            app.SaturationSlider.FontName = 'Times New Roman';
            app.SaturationSlider.Position = [708 533 198 3];

            % Create HillslopeAngledegreesLabel
            app.HillslopeAngledegreesLabel = uilabel(app.Tab1);
            app.HillslopeAngledegreesLabel.Interpreter = 'latex';
            app.HillslopeAngledegreesLabel.HorizontalAlignment = 'right';
            app.HillslopeAngledegreesLabel.FontName = 'Times New Roman';
            app.HillslopeAngledegreesLabel.FontSize = 16;
            app.HillslopeAngledegreesLabel.Position = [486 447 201 22];
            app.HillslopeAngledegreesLabel.Text = 'Hillslope Angle (degrees):';

            % Create HillslopeAngledegreesSlider
            app.HillslopeAngledegreesSlider = uislider(app.Tab1);
            app.HillslopeAngledegreesSlider.Limits = [0 90];
            app.HillslopeAngledegreesSlider.MajorTicks = [0 30 60 90];
            app.HillslopeAngledegreesSlider.ValueChangedFcn = createCallbackFcn(app, @HillslopeAngledegreesSliderValueChanged, true);
            app.HillslopeAngledegreesSlider.MinorTicks = [0 15 30 45 60 75 90];
            app.HillslopeAngledegreesSlider.FontName = 'Times New Roman';
            app.HillslopeAngledegreesSlider.Position = [708 456 202 3];

            % Create AngleofInternalFrictiondegreesLabel
            app.AngleofInternalFrictiondegreesLabel = uilabel(app.Tab1);
            app.AngleofInternalFrictiondegreesLabel.Interpreter = 'latex';
            app.AngleofInternalFrictiondegreesLabel.HorizontalAlignment = 'right';
            app.AngleofInternalFrictiondegreesLabel.FontName = 'Times New Roman';
            app.AngleofInternalFrictiondegreesLabel.FontSize = 16;
            app.AngleofInternalFrictiondegreesLabel.Position = [415 368 275 22];
            app.AngleofInternalFrictiondegreesLabel.Text = 'Angle of Internal Friction (degrees):';

            % Create AngleofInternalFrictiondegreesSlider
            app.AngleofInternalFrictiondegreesSlider = uislider(app.Tab1);
            app.AngleofInternalFrictiondegreesSlider.Limits = [0 90];
            app.AngleofInternalFrictiondegreesSlider.MajorTicks = [0 30 60 90];
            app.AngleofInternalFrictiondegreesSlider.ValueChangedFcn = createCallbackFcn(app, @AngleofInternalFrictiondegreesSliderValueChanged, true);
            app.AngleofInternalFrictiondegreesSlider.MinorTicks = [0 15 30 45 60 75 90];
            app.AngleofInternalFrictiondegreesSlider.FontName = 'Times New Roman';
            app.AngleofInternalFrictiondegreesSlider.Position = [711 377 200 3];

            % Create Tab2
            app.Tab2 = uitab(app.TabGroup);
            app.Tab2.Title = 'Tab2';
            app.Tab2.BackgroundColor = [0.902 0.902 0.902];

            % Create InfoButton2
            app.InfoButton2 = uibutton(app.Tab2, 'push');
            app.InfoButton2.ButtonPushedFcn = createCallbackFcn(app, @InfoButton2Pushed, true);
            app.InfoButton2.BackgroundColor = [1 1 1];
            app.InfoButton2.FontName = 'Times New Roman';
            app.InfoButton2.Position = [805 42 106 47];
            app.InfoButton2.Text = 'Info';

            % Create RunButton2
            app.RunButton2 = uibutton(app.Tab2, 'push');
            app.RunButton2.ButtonPushedFcn = createCallbackFcn(app, @RunButton2Pushed, true);
            app.RunButton2.BackgroundColor = [1 1 1];
            app.RunButton2.FontName = 'Times New Roman';
            app.RunButton2.FontSize = 24;
            app.RunButton2.Position = [456 211 127 39];
            app.RunButton2.Text = 'Run';

            % Create FactorofSafetyLabel
            app.FactorofSafetyLabel = uilabel(app.Tab2);
            app.FactorofSafetyLabel.HorizontalAlignment = 'center';
            app.FactorofSafetyLabel.FontName = 'Times New Roman';
            app.FactorofSafetyLabel.FontSize = 24;
            app.FactorofSafetyLabel.Position = [443 98 160 32];
            app.FactorofSafetyLabel.Text = 'Factor of Safety';

            % Create SfGauge2
            app.SfGauge2 = uigauge(app.Tab2, 'linear');
            app.SfGauge2.Limits = [0 5];
            app.SfGauge2.MajorTicks = [0 1 2 3 4 5];
            app.SfGauge2.MajorTickLabels = {'0', '1', '2', '3', '4', '5+'};
            app.SfGauge2.MinorTicks = [0.2 0.4 0.6 0.8 1.2 1.4 1.6 1.8 2.2 2.4 2.6 2.8 3.2 3.4 3.6 3.8 4.2 4.4 4.6 4.8];
            app.SfGauge2.FontName = 'Times New Roman';
            app.SfGauge2.Position = [169 145 702 41];

            % Create SfLamp1_2Label
            app.SfLamp1_2Label = uilabel(app.Tab2);
            app.SfLamp1_2Label.HorizontalAlignment = 'right';
            app.SfLamp1_2Label.Visible = 'off';
            app.SfLamp1_2Label.Position = [26 153 54 22];
            app.SfLamp1_2Label.Text = 'SfLamp1';

            % Create SfLamp2
            app.SfLamp2 = uilamp(app.Tab2);
            app.SfLamp2.Position = [95 144 40 40];

            % Create DepthmLabel
            app.DepthmLabel = uilabel(app.Tab2);
            app.DepthmLabel.Interpreter = 'latex';
            app.DepthmLabel.HorizontalAlignment = 'right';
            app.DepthmLabel.FontName = 'Times New Roman';
            app.DepthmLabel.FontSize = 18;
            app.DepthmLabel.Position = [130 401 98 24];
            app.DepthmLabel.Text = 'Depth (m):';

            % Create DepthSlider2
            app.DepthSlider2 = uislider(app.Tab2);
            app.DepthSlider2.Limits = [0 5];
            app.DepthSlider2.MajorTicks = [0 1 2 3 4 5];
            app.DepthSlider2.ValueChangedFcn = createCallbackFcn(app, @DepthSlider2ValueChanged, true);
            app.DepthSlider2.MinorTicks = [0 0.5 1 1.5 2 2.5 3 3.5 4 4.5 5];
            app.DepthSlider2.FontName = 'Times New Roman';
            app.DepthSlider2.Position = [241 412 198 3];

            % Create SaturationLabel_3
            app.SaturationLabel_3 = uilabel(app.Tab2);
            app.SaturationLabel_3.Interpreter = 'latex';
            app.SaturationLabel_3.HorizontalAlignment = 'right';
            app.SaturationLabel_3.FontName = 'Times New Roman';
            app.SaturationLabel_3.FontSize = 18;
            app.SaturationLabel_3.Position = [135 487 96 24];
            app.SaturationLabel_3.Text = 'Saturation:';

            % Create SaturationSlider2
            app.SaturationSlider2 = uislider(app.Tab2);
            app.SaturationSlider2.Limits = [0 1];
            app.SaturationSlider2.MajorTicks = [0 0.2 0.4 0.6 0.8 1];
            app.SaturationSlider2.ValueChangedFcn = createCallbackFcn(app, @SaturationSlider2ValueChanged, true);
            app.SaturationSlider2.MinorTicks = [0.1 0.3 0.5 0.7 0.9];
            app.SaturationSlider2.FontName = 'Times New Roman';
            app.SaturationSlider2.Position = [242 498 198 3];

            % Create HillslopeAngledegreesLabel_2
            app.HillslopeAngledegreesLabel_2 = uilabel(app.Tab2);
            app.HillslopeAngledegreesLabel_2.Interpreter = 'latex';
            app.HillslopeAngledegreesLabel_2.HorizontalAlignment = 'right';
            app.HillslopeAngledegreesLabel_2.FontName = 'Times New Roman';
            app.HillslopeAngledegreesLabel_2.FontSize = 18;
            app.HillslopeAngledegreesLabel_2.Position = [8 322 222 24];
            app.HillslopeAngledegreesLabel_2.Text = 'Hillslope Angle (degrees):';

            % Create HillslopeAngleSlider2
            app.HillslopeAngleSlider2 = uislider(app.Tab2);
            app.HillslopeAngleSlider2.Limits = [0 90];
            app.HillslopeAngleSlider2.MajorTicks = [0 30 60 90];
            app.HillslopeAngleSlider2.ValueChangedFcn = createCallbackFcn(app, @HillslopeAngleSlider2ValueChanged, true);
            app.HillslopeAngleSlider2.MinorTicks = [0 15 30 45 60 75 90];
            app.HillslopeAngleSlider2.FontName = 'Times New Roman';
            app.HillslopeAngleSlider2.Position = [237 333 202 3];

            % Create SoilTypeDropDownLabel
            app.SoilTypeDropDownLabel = uilabel(app.Tab2);
            app.SoilTypeDropDownLabel.HorizontalAlignment = 'right';
            app.SoilTypeDropDownLabel.FontName = 'Times New Roman';
            app.SoilTypeDropDownLabel.FontSize = 18;
            app.SoilTypeDropDownLabel.Position = [359 551 74 23];
            app.SoilTypeDropDownLabel.Text = 'Soil Type';

            % Create SoilTypeDropDown
            app.SoilTypeDropDown = uidropdown(app.Tab2);
            app.SoilTypeDropDown.Items = {'Dense, mixed sand', 'Uniform gravel', 'Chalk', 'Shale', 'Very soft organic clay', 'Stiff glacial clay', 'Mixed glacial till'};
            app.SoilTypeDropDown.ItemsData = {'1', '2', '3', '4', '5', '6', '7'};
            app.SoilTypeDropDown.ValueChangedFcn = createCallbackFcn(app, @SoilTypeDropDownValueChanged, true);
            app.SoilTypeDropDown.FontName = 'Times New Roman';
            app.SoilTypeDropDown.FontSize = 18;
            app.SoilTypeDropDown.BackgroundColor = [1 1 1];
            app.SoilTypeDropDown.Position = [440 545 264 34];
            app.SoilTypeDropDown.Value = '1';

            % Create CohesionkPaGaugeLabel
            app.CohesionkPaGaugeLabel = uilabel(app.Tab2);
            app.CohesionkPaGaugeLabel.Interpreter = 'latex';
            app.CohesionkPaGaugeLabel.HorizontalAlignment = 'center';
            app.CohesionkPaGaugeLabel.FontName = 'Times New Roman';
            app.CohesionkPaGaugeLabel.FontSize = 18;
            app.CohesionkPaGaugeLabel.Position = [535 474 166 24];
            app.CohesionkPaGaugeLabel.Text = 'Cohesion (kPa):';

            % Create CohesionkPaGauge
            app.CohesionkPaGauge = uigauge(app.Tab2, 'linear');
            app.CohesionkPaGauge.Limits = [0 150];
            app.CohesionkPaGauge.MajorTicks = [0 50 100 150];
            app.CohesionkPaGauge.MinorTicks = [25 75 125];
            app.CohesionkPaGauge.FontName = 'Times New Roman';
            app.CohesionkPaGauge.Position = [686 467 243 41];

            % Create InternalAngledegreesGaugeLabel
            app.InternalAngledegreesGaugeLabel = uilabel(app.Tab2);
            app.InternalAngledegreesGaugeLabel.Interpreter = 'latex';
            app.InternalAngledegreesGaugeLabel.HorizontalAlignment = 'center';
            app.InternalAngledegreesGaugeLabel.FontName = 'Times New Roman';
            app.InternalAngledegreesGaugeLabel.FontSize = 18;
            app.InternalAngledegreesGaugeLabel.Position = [433 391 303 24];
            app.InternalAngledegreesGaugeLabel.Text = 'Internal Angle (degrees):';

            % Create InternalAngledegreesGauge
            app.InternalAngledegreesGauge = uigauge(app.Tab2, 'linear');
            app.InternalAngledegreesGauge.Limits = [0 90];
            app.InternalAngledegreesGauge.MajorTicks = [0 30 60 90];
            app.InternalAngledegreesGauge.MinorTicks = [15 45 75];
            app.InternalAngledegreesGauge.FontName = 'Times New Roman';
            app.InternalAngledegreesGauge.Position = [686 386 242 41];
            app.InternalAngledegreesGauge.Value = 38;

            % Create UnitWeightkNm3GaugeLabel
            app.UnitWeightkNm3GaugeLabel = uilabel(app.Tab2);
            app.UnitWeightkNm3GaugeLabel.Interpreter = 'latex';
            app.UnitWeightkNm3GaugeLabel.HorizontalAlignment = 'center';
            app.UnitWeightkNm3GaugeLabel.FontName = 'Times New Roman';
            app.UnitWeightkNm3GaugeLabel.FontSize = 18;
            app.UnitWeightkNm3GaugeLabel.Position = [466 311 266 24];
            app.UnitWeightkNm3GaugeLabel.Text = 'Unit Weight (kN/m$3^$):';

            % Create UnitWeightkNm3Gauge
            app.UnitWeightkNm3Gauge = uigauge(app.Tab2, 'linear');
            app.UnitWeightkNm3Gauge.Limits = [0 25];
            app.UnitWeightkNm3Gauge.MajorTicks = [0 5 10 15 20 25];
            app.UnitWeightkNm3Gauge.MinorTicks = [2.5 7.5 12.5 17.5 22.5];
            app.UnitWeightkNm3Gauge.FontName = 'Times New Roman';
            app.UnitWeightkNm3Gauge.Position = [687 303 242 41];
            app.UnitWeightkNm3Gauge.Value = 18;

            % Create Tab3
            app.Tab3 = uitab(app.TabGroup);
            app.Tab3.Title = 'Tab3';
            app.Tab3.BackgroundColor = [0.902 0.902 0.902];

            % Create UIAxes
            app.UIAxes = uiaxes(app.Tab3);
            title(app.UIAxes, 'Factor of Safety for Each Input Parameter')
            xlabel(app.UIAxes, 'X')
            ylabel(app.UIAxes, 'Factor of Safety')
            zlabel(app.UIAxes, 'Z')
            app.UIAxes.FontName = 'Times New Roman';
            app.UIAxes.FontSize = 16;
            app.UIAxes.Position = [391 171 554 426];

            % Create InfoButton3
            app.InfoButton3 = uibutton(app.Tab3, 'push');
            app.InfoButton3.ButtonPushedFcn = createCallbackFcn(app, @InfoButton3Pushed, true);
            app.InfoButton3.BackgroundColor = [1 1 1];
            app.InfoButton3.FontName = 'Times New Roman';
            app.InfoButton3.Position = [806 42 106 47];
            app.InfoButton3.Text = 'Info';

            % Create UpdateButton3
            app.UpdateButton3 = uibutton(app.Tab3, 'push');
            app.UpdateButton3.ButtonPushedFcn = createCallbackFcn(app, @UpdateButton3Pushed, true);
            app.UpdateButton3.BackgroundColor = [1 1 1];
            app.UpdateButton3.FontName = 'Times New Roman';
            app.UpdateButton3.FontSize = 24;
            app.UpdateButton3.Position = [256 171 127 49];
            app.UpdateButton3.Text = 'Update';

            % Create XVariableDropDownLabel
            app.XVariableDropDownLabel = uilabel(app.Tab3);
            app.XVariableDropDownLabel.Interpreter = 'latex';
            app.XVariableDropDownLabel.HorizontalAlignment = 'right';
            app.XVariableDropDownLabel.FontName = 'Times New Roman';
            app.XVariableDropDownLabel.FontSize = 18;
            app.XVariableDropDownLabel.Position = [70 485 105 67];
            app.XVariableDropDownLabel.Text = 'X Variable';

            % Create XVariableDropDown
            app.XVariableDropDown = uidropdown(app.Tab3);
            app.XVariableDropDown.Items = {'Cohesion', 'Depth', 'Unit Weight', 'Hillslope Angle', 'Saturation', 'Angle of Internal Friction'};
            app.XVariableDropDown.ItemsData = {'1', '2', '3', '4', '5', '6'};
            app.XVariableDropDown.ValueChangedFcn = createCallbackFcn(app, @XVariableDropDownValueChanged, true);
            app.XVariableDropDown.FontName = 'Times New Roman';
            app.XVariableDropDown.FontSize = 18;
            app.XVariableDropDown.BackgroundColor = [1 1 1];
            app.XVariableDropDown.Position = [256 485 127 67];
            app.XVariableDropDown.Value = '1';

            % Create CohesionkPaEditFieldLabel
            app.CohesionkPaEditFieldLabel = uilabel(app.Tab3);
            app.CohesionkPaEditFieldLabel.Interpreter = 'latex';
            app.CohesionkPaEditFieldLabel.HorizontalAlignment = 'right';
            app.CohesionkPaEditFieldLabel.FontName = 'Times New Roman';
            app.CohesionkPaEditFieldLabel.FontSize = 18;
            app.CohesionkPaEditFieldLabel.Position = [70 451 180 24];
            app.CohesionkPaEditFieldLabel.Text = 'Cohesion (kPa):';

            % Create CohesionkPaEditField
            app.CohesionkPaEditField = uieditfield(app.Tab3, 'numeric');
            app.CohesionkPaEditField.Limits = [0 150];
            app.CohesionkPaEditField.ValueChangedFcn = createCallbackFcn(app, @CohesionkPaEditFieldValueChanged, true);
            app.CohesionkPaEditField.FontName = 'Times New Roman';
            app.CohesionkPaEditField.FontSize = 18;
            app.CohesionkPaEditField.Position = [256 451 127 24];

            % Create DepthmLabel_2
            app.DepthmLabel_2 = uilabel(app.Tab3);
            app.DepthmLabel_2.Interpreter = 'latex';
            app.DepthmLabel_2.HorizontalAlignment = 'right';
            app.DepthmLabel_2.FontName = 'Times New Roman';
            app.DepthmLabel_2.FontSize = 18;
            app.DepthmLabel_2.Position = [70 417 180 24];
            app.DepthmLabel_2.Text = 'Depth (m):';

            % Create DepthmEditField
            app.DepthmEditField = uieditfield(app.Tab3, 'numeric');
            app.DepthmEditField.Limits = [0.1 5];
            app.DepthmEditField.ValueChangedFcn = createCallbackFcn(app, @DepthmEditFieldValueChanged, true);
            app.DepthmEditField.FontName = 'Times New Roman';
            app.DepthmEditField.FontSize = 18;
            app.DepthmEditField.Position = [256 417 127 24];
            app.DepthmEditField.Value = 1;

            % Create UnitWeightkNm3EditFieldLabel
            app.UnitWeightkNm3EditFieldLabel = uilabel(app.Tab3);
            app.UnitWeightkNm3EditFieldLabel.Interpreter = 'latex';
            app.UnitWeightkNm3EditFieldLabel.HorizontalAlignment = 'right';
            app.UnitWeightkNm3EditFieldLabel.FontName = 'Times New Roman';
            app.UnitWeightkNm3EditFieldLabel.FontSize = 18;
            app.UnitWeightkNm3EditFieldLabel.Position = [70 380 180 27];
            app.UnitWeightkNm3EditFieldLabel.Text = 'Unit Weight (kN/m$^3$):';

            % Create UnitWeightkNm3EditField
            app.UnitWeightkNm3EditField = uieditfield(app.Tab3, 'numeric');
            app.UnitWeightkNm3EditField.Limits = [0.1 25];
            app.UnitWeightkNm3EditField.ValueChangedFcn = createCallbackFcn(app, @UnitWeightkNm3EditFieldValueChanged, true);
            app.UnitWeightkNm3EditField.FontName = 'Times New Roman';
            app.UnitWeightkNm3EditField.FontSize = 18;
            app.UnitWeightkNm3EditField.Position = [256 380 127 27];
            app.UnitWeightkNm3EditField.Value = 18;

            % Create HillslopeangledegreesEditFieldLabel
            app.HillslopeangledegreesEditFieldLabel = uilabel(app.Tab3);
            app.HillslopeangledegreesEditFieldLabel.Interpreter = 'latex';
            app.HillslopeangledegreesEditFieldLabel.HorizontalAlignment = 'right';
            app.HillslopeangledegreesEditFieldLabel.FontName = 'Times New Roman';
            app.HillslopeangledegreesEditFieldLabel.FontSize = 18;
            app.HillslopeangledegreesEditFieldLabel.Position = [8 346 241 24];
            app.HillslopeangledegreesEditFieldLabel.Text = 'Hillslope angle (degrees):';

            % Create HillslopeangledegreesEditField
            app.HillslopeangledegreesEditField = uieditfield(app.Tab3, 'numeric');
            app.HillslopeangledegreesEditField.Limits = [1 89];
            app.HillslopeangledegreesEditField.ValueChangedFcn = createCallbackFcn(app, @HillslopeangledegreesEditFieldValueChanged, true);
            app.HillslopeangledegreesEditField.FontName = 'Times New Roman';
            app.HillslopeangledegreesEditField.FontSize = 18;
            app.HillslopeangledegreesEditField.Position = [256 346 127 24];
            app.HillslopeangledegreesEditField.Value = 10;

            % Create SaturationLabel_4
            app.SaturationLabel_4 = uilabel(app.Tab3);
            app.SaturationLabel_4.Interpreter = 'latex';
            app.SaturationLabel_4.HorizontalAlignment = 'right';
            app.SaturationLabel_4.FontName = 'Times New Roman';
            app.SaturationLabel_4.FontSize = 18;
            app.SaturationLabel_4.Position = [70 312 180 24];
            app.SaturationLabel_4.Text = 'Saturation:';

            % Create SaturationEditField
            app.SaturationEditField = uieditfield(app.Tab3, 'numeric');
            app.SaturationEditField.Limits = [0 1];
            app.SaturationEditField.ValueChangedFcn = createCallbackFcn(app, @SaturationEditFieldValueChanged, true);
            app.SaturationEditField.FontName = 'Times New Roman';
            app.SaturationEditField.FontSize = 18;
            app.SaturationEditField.Position = [256 312 127 24];
            app.SaturationEditField.Value = 0.5;

            % Create InternalAngledegreesEditFieldLabel
            app.InternalAngledegreesEditFieldLabel = uilabel(app.Tab3);
            app.InternalAngledegreesEditFieldLabel.Interpreter = 'latex';
            app.InternalAngledegreesEditFieldLabel.HorizontalAlignment = 'right';
            app.InternalAngledegreesEditFieldLabel.FontName = 'Times New Roman';
            app.InternalAngledegreesEditFieldLabel.FontSize = 18;
            app.InternalAngledegreesEditFieldLabel.Position = [8 278 241 24];
            app.InternalAngledegreesEditFieldLabel.Text = 'Internal Angle (degrees):';

            % Create InternalAngledegreesEditField
            app.InternalAngledegreesEditField = uieditfield(app.Tab3, 'numeric');
            app.InternalAngledegreesEditField.Limits = [1 89];
            app.InternalAngledegreesEditField.ValueChangedFcn = createCallbackFcn(app, @InternalAngledegreesEditFieldValueChanged, true);
            app.InternalAngledegreesEditField.FontName = 'Times New Roman';
            app.InternalAngledegreesEditField.FontSize = 18;
            app.InternalAngledegreesEditField.Position = [256 278 127 24];
            app.InternalAngledegreesEditField.Value = 38;

            % Create FactorofSafetyLabel_3
            app.FactorofSafetyLabel_3 = uilabel(app.Tab3);
            app.FactorofSafetyLabel_3.HorizontalAlignment = 'center';
            app.FactorofSafetyLabel_3.FontName = 'Times New Roman';
            app.FactorofSafetyLabel_3.FontSize = 24;
            app.FactorofSafetyLabel_3.Position = [391 68 221 32];
            app.FactorofSafetyLabel_3.Text = 'Factor of Safety';

            % Create SfGauge3
            app.SfGauge3 = uigauge(app.Tab3, 'linear');
            app.SfGauge3.Limits = [0 5];
            app.SfGauge3.MajorTicks = [0 1 2 3 4 5];
            app.SfGauge3.MajorTickLabels = {'0', '1', '2', '3', '4', '5+'};
            app.SfGauge3.MinorTicks = [0.2 0.4 0.6 0.8 1.2 1.4 1.6 1.8 2.2 2.4 2.6 2.8 3.2 3.4 3.6 3.8 4.2 4.4 4.6 4.8];
            app.SfGauge3.FontName = 'Times New Roman';
            app.SfGauge3.Position = [117 110 715 51];

            % Create SfLamp1_2Label_2
            app.SfLamp1_2Label_2 = uilabel(app.Tab3);
            app.SfLamp1_2Label_2.HorizontalAlignment = 'right';
            app.SfLamp1_2Label_2.Visible = 'off';
            app.SfLamp1_2Label_2.Position = [8 139 54 22];
            app.SfLamp1_2Label_2.Text = 'SfLamp1';

            % Create SfLamp3
            app.SfLamp3 = uilamp(app.Tab3);
            app.SfLamp3.Position = [70 116 40 40];

            % Create Tab4
            app.Tab4 = uitab(app.TabGroup);
            app.Tab4.Title = 'Tab4';
            app.Tab4.BackgroundColor = [0.902 0.902 0.902];

            % Create InfoButton4
            app.InfoButton4 = uibutton(app.Tab4, 'push');
            app.InfoButton4.ButtonPushedFcn = createCallbackFcn(app, @InfoButton4Pushed, true);
            app.InfoButton4.BackgroundColor = [1 1 1];
            app.InfoButton4.FontName = 'Times New Roman';
            app.InfoButton4.Position = [806 42 105 47];
            app.InfoButton4.Text = 'Info';

            % Create RunButton4
            app.RunButton4 = uibutton(app.Tab4, 'push');
            app.RunButton4.ButtonPushedFcn = createCallbackFcn(app, @RunButton4Pushed, true);
            app.RunButton4.BackgroundColor = [1 1 1];
            app.RunButton4.FontName = 'Times New Roman';
            app.RunButton4.FontSize = 24;
            app.RunButton4.Position = [453 171 132 39];
            app.RunButton4.Text = 'Run';

            % Create FactorofSafetyLabel_4
            app.FactorofSafetyLabel_4 = uilabel(app.Tab4);
            app.FactorofSafetyLabel_4.HorizontalAlignment = 'center';
            app.FactorofSafetyLabel_4.FontName = 'Times New Roman';
            app.FactorofSafetyLabel_4.FontSize = 24;
            app.FactorofSafetyLabel_4.Position = [453 68 176 32];
            app.FactorofSafetyLabel_4.Text = 'Factor of Safety';

            % Create SfGauge4
            app.SfGauge4 = uigauge(app.Tab4, 'linear');
            app.SfGauge4.Limits = [0 5];
            app.SfGauge4.MajorTicks = [0 1 2 3 4 5];
            app.SfGauge4.MajorTickLabels = {'0', '1', '2', '3', '4', '5+'};
            app.SfGauge4.MinorTicks = [0.2 0.4 0.6 0.8 1.2 1.4 1.6 1.8 2.2 2.4 2.6 2.8 3.2 3.4 3.6 3.8 4.2 4.4 4.6 4.8];
            app.SfGauge4.FontName = 'Times New Roman';
            app.SfGauge4.Position = [151 110 753 51];

            % Create SfLamp1_2Label_3
            app.SfLamp1_2Label_3 = uilabel(app.Tab4);
            app.SfLamp1_2Label_3.HorizontalAlignment = 'right';
            app.SfLamp1_2Label_3.Visible = 'off';
            app.SfLamp1_2Label_3.Position = [6 139 54 22];
            app.SfLamp1_2Label_3.Text = 'SfLamp1';

            % Create SfLamp4
            app.SfLamp4 = uilamp(app.Tab4);
            app.SfLamp4.Position = [65 115 40 40];

            % Create CohesionLabel
            app.CohesionLabel = uilabel(app.Tab4);
            app.CohesionLabel.Interpreter = 'latex';
            app.CohesionLabel.HorizontalAlignment = 'center';
            app.CohesionLabel.FontName = 'Times New Roman';
            app.CohesionLabel.FontSize = 18;
            app.CohesionLabel.Position = [41 451 156 41];
            app.CohesionLabel.Text = 'Cohesion (kPa):';

            % Create CohesionGauge4
            app.CohesionGauge4 = uigauge(app.Tab4, 'linear');
            app.CohesionGauge4.Limits = [0 150];
            app.CohesionGauge4.MajorTicks = [0 50 100 150];
            app.CohesionGauge4.MinorTicks = [25 75 125];
            app.CohesionGauge4.FontName = 'Times New Roman';
            app.CohesionGauge4.Position = [189 453 219 41];

            % Create UnitWeightLabel
            app.UnitWeightLabel = uilabel(app.Tab4);
            app.UnitWeightLabel.Interpreter = 'latex';
            app.UnitWeightLabel.HorizontalAlignment = 'center';
            app.UnitWeightLabel.FontName = 'Times New Roman';
            app.UnitWeightLabel.FontSize = 18;
            app.UnitWeightLabel.Position = [6 270 178 41];
            app.UnitWeightLabel.Text = 'Unit Weight (kN/m$^3$):';

            % Create UnitWeightGauge4
            app.UnitWeightGauge4 = uigauge(app.Tab4, 'linear');
            app.UnitWeightGauge4.Limits = [0 25];
            app.UnitWeightGauge4.MajorTicks = [0 5 10 15 20 25];
            app.UnitWeightGauge4.MinorTicks = [2.5 7.5 12.5 17.5 22.5];
            app.UnitWeightGauge4.FontName = 'Times New Roman';
            app.UnitWeightGauge4.Position = [189 270 219 41];

            % Create DepthLabel
            app.DepthLabel = uilabel(app.Tab4);
            app.DepthLabel.Interpreter = 'latex';
            app.DepthLabel.HorizontalAlignment = 'center';
            app.DepthLabel.FontName = 'Times New Roman';
            app.DepthLabel.FontSize = 18;
            app.DepthLabel.Position = [78 364 119 41];
            app.DepthLabel.Text = 'Depth (m):';

            % Create DepthGauge4
            app.DepthGauge4 = uigauge(app.Tab4, 'linear');
            app.DepthGauge4.Limits = [0 5];
            app.DepthGauge4.MajorTicks = [0 1 2 3 4 5];
            app.DepthGauge4.MinorTicks = [0.5 1.5 2.5 3.5 4.5];
            app.DepthGauge4.FontName = 'Times New Roman';
            app.DepthGauge4.Position = [189 364 219 41];

            % Create SaturationLabel
            app.SaturationLabel = uilabel(app.Tab4);
            app.SaturationLabel.Interpreter = 'latex';
            app.SaturationLabel.HorizontalAlignment = 'center';
            app.SaturationLabel.FontName = 'Times New Roman';
            app.SaturationLabel.FontSize = 18;
            app.SaturationLabel.Position = [590 453 89 41];
            app.SaturationLabel.Text = 'Saturation:   ';

            % Create SaturationGauge4
            app.SaturationGauge4 = uigauge(app.Tab4, 'linear');
            app.SaturationGauge4.Limits = [0 1];
            app.SaturationGauge4.MajorTicks = [0 0.2 0.4 0.6 0.8 1];
            app.SaturationGauge4.MinorTicks = [0.1 0.3 0.5 0.7 0.9];
            app.SaturationGauge4.FontName = 'Times New Roman';
            app.SaturationGauge4.Position = [684 453 220 41];

            % Create HillslopeAngleLabel
            app.HillslopeAngleLabel = uilabel(app.Tab4);
            app.HillslopeAngleLabel.Interpreter = 'latex';
            app.HillslopeAngleLabel.HorizontalAlignment = 'center';
            app.HillslopeAngleLabel.FontName = 'Times New Roman';
            app.HillslopeAngleLabel.FontSize = 18;
            app.HillslopeAngleLabel.Position = [453 364 226 41];
            app.HillslopeAngleLabel.Text = 'Hillslope Angle (degrees):';

            % Create HillslopeAngleGauge4
            app.HillslopeAngleGauge4 = uigauge(app.Tab4, 'linear');
            app.HillslopeAngleGauge4.Limits = [0 90];
            app.HillslopeAngleGauge4.MajorTicks = [0 30 60 90];
            app.HillslopeAngleGauge4.MinorTicks = [15 45 75];
            app.HillslopeAngleGauge4.FontName = 'Times New Roman';
            app.HillslopeAngleGauge4.Position = [684 364 220 41];

            % Create AngleofInternalFrictionLabel
            app.AngleofInternalFrictionLabel = uilabel(app.Tab4);
            app.AngleofInternalFrictionLabel.Interpreter = 'latex';
            app.AngleofInternalFrictionLabel.HorizontalAlignment = 'center';
            app.AngleofInternalFrictionLabel.FontName = 'Times New Roman';
            app.AngleofInternalFrictionLabel.FontSize = 18;
            app.AngleofInternalFrictionLabel.Position = [414 270 317 41];
            app.AngleofInternalFrictionLabel.Text = 'Internal Angle (degrees):';

            % Create AngleofInternalFrictionGauge4
            app.AngleofInternalFrictionGauge4 = uigauge(app.Tab4, 'linear');
            app.AngleofInternalFrictionGauge4.Limits = [0 90];
            app.AngleofInternalFrictionGauge4.MajorTicks = [0 30 60 90];
            app.AngleofInternalFrictionGauge4.MinorTicks = [15 45 75];
            app.AngleofInternalFrictionGauge4.FontName = 'Times New Roman';
            app.AngleofInternalFrictionGauge4.Position = [684 270 220 41];

            % Create HillslopeDropDownLabel
            app.HillslopeDropDownLabel = uilabel(app.Tab4);
            app.HillslopeDropDownLabel.HorizontalAlignment = 'right';
            app.HillslopeDropDownLabel.FontName = 'Times New Roman';
            app.HillslopeDropDownLabel.FontSize = 18;
            app.HillslopeDropDownLabel.Position = [372 573 76 24];
            app.HillslopeDropDownLabel.Text = 'Hillslope';

            % Create HillslopeDropDown
            app.HillslopeDropDown = uidropdown(app.Tab4);
            app.HillslopeDropDown.Items = {'Hillslope 1', 'Hillslope 2', 'Hillslope 3', 'Hillslope 4'};
            app.HillslopeDropDown.ItemsData = {'1', '2', '3', '4'};
            app.HillslopeDropDown.ValueChangedFcn = createCallbackFcn(app, @HillslopeDropDownValueChanged, true);
            app.HillslopeDropDown.FontName = 'Times New Roman';
            app.HillslopeDropDown.FontSize = 18;
            app.HillslopeDropDown.BackgroundColor = [1 1 1];
            app.HillslopeDropDown.Position = [453 573 176 24];
            app.HillslopeDropDown.Value = '1';

            % Create Tab5
            app.Tab5 = uitab(app.TabGroup);
            app.Tab5.Title = 'Tab5';
            app.Tab5.BackgroundColor = [0.902 0.902 0.902];

            % Create InfoButton5
            app.InfoButton5 = uibutton(app.Tab5, 'push');
            app.InfoButton5.ButtonPushedFcn = createCallbackFcn(app, @InfoButton5Pushed, true);
            app.InfoButton5.BackgroundColor = [1 1 1];
            app.InfoButton5.FontName = 'Times New Roman';
            app.InfoButton5.Position = [806 42 105 47];
            app.InfoButton5.Text = 'Info';

            % Create Image2
            app.Image2 = uiimage(app.Tab5);
            app.Image2.Position = [169 338 594 208];
            app.Image2.ImageSource = fullfile(pathToMLAPP, 'SoilValueTable.jpg');

            % Create Image2_2
            app.Image2_2 = uiimage(app.Tab5);
            app.Image2_2.Position = [59 39 820 351];
            app.Image2_2.ImageSource = fullfile(pathToMLAPP, 'HillslopeValueTable (2).jpg');

            % Create Table1VariablevaluesfordifferentsoiltypesLabel
            app.Table1VariablevaluesfordifferentsoiltypesLabel = uilabel(app.Tab5);
            app.Table1VariablevaluesfordifferentsoiltypesLabel.Position = [196 552 251 22];
            app.Table1VariablevaluesfordifferentsoiltypesLabel.Text = 'Table 1: Variable values for different soil types';

            % Create Table2VariablevaluesfordifferentexamplehillslopesLabel
            app.Table2VariablevaluesfordifferentexamplehillslopesLabel = uilabel(app.Tab5);
            app.Table2VariablevaluesfordifferentexamplehillslopesLabel.Position = [59 282 301 22];
            app.Table2VariablevaluesfordifferentexamplehillslopesLabel.Text = 'Table 2: Variable values for different example hillslopes';

            % Show the figure after all components are created
            app.UIFigure.Visible = 'on';
        end
    end

    % App creation and deletion
    methods (Access = public)

        % Construct app
        function app = complete_app_exported

            % Create UIFigure and components
            createComponents(app)

            % Register the app with App Designer
            registerApp(app, app.UIFigure)

            % Execute the startup function
            runStartupFcn(app, @startupFcn)

            if nargout == 0
                clear app
            end
        end

        % Code that executes before app deletion
        function delete(app)

            % Delete UIFigure when app is deleted
            delete(app.UIFigure)
        end
    end
end