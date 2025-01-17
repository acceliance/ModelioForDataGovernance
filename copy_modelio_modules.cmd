
if not exist "C:\Users\%USERNAME%\modelio\Modelio Open Source 5.4\modules\" (
echo "INSTALL Modelio first, copy failed"
goto done
)

if not exist "C:\Users\%USERNAME%\.modelio\5.4\modules\" (
echo "RUN Modelio first, copy failed"
goto done
)

xcopy modules\ModelioUtils_5.4.01.jmdac "C:\Users\%USERNAME%\modelio\Modelio Open Source 5.4\modules\" /Y
xcopy modules\CartographyManager_5.4.01.jmdac "C:\Users\%USERNAME%\modelio\Modelio Open Source 5.4\modules\" /Y
xcopy modules\DiagramColorizer_5.4.01.jmdac "C:\Users\%USERNAME%\modelio_modelio\Modelio Open Source 5.4\modules\" /Y
xcopy modules\ExcelUtils_5.4.01.jmdac "C:\Users\%USERNAME%\modelio_modelio\Modelio Open Source 5.4\modules\" /Y

md "C:\Users\%USERNAME%\.modelio\5.4\modules\ModelioUtils_5.4.01\"
xcopy modules\ModelioUtils_5.4.01.jmdac "C:\Users\%USERNAME%\.modelio\5.4\modules\ModelioUtils_5.4.01\" /Y
md "C:\Users\%USERNAME%\.modelio\5.4\modules\CartographyManager_5.4.01\"
xcopy modules\CartographyManager_5.4.01.jmdac "C:\Users\%USERNAME%\.modelio\5.4\modules\CartographyManager_5.4.01\" /Y
md "C:\Users\%USERNAME%\.modelio\5.4\modules\DiagramColorizer_5.4.01\"
xcopy modules\DiagramColorizer_5.4.01.jmdac "C:\Users\%USERNAME%\.modelio\5.4\modules\DiagramColorizer_5.4.01\" /Y
md "C:\Users\%USERNAME%\.modelio\5.4\modules\ExcelUtils_5.4.01\"
xcopy modules\ExcelUtils_5.4.01.jmdac "C:\Users\%USERNAME%\.modelio\5.4\modules\ExcelUtils_5.4.01\" /Y

echo "copy done"

:done
