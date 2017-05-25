:: This file has been created by:
:: Otavio B. Soria
:: http://facebook.com/OtavioBernardesSoria
::
:: Author's considerations:
:: The intention of this file is to create certains customizations in the
:: account that are created for the user when he uses a computer
:: in the Unisinos enviroment.
:: None of the features included in this file by the original author intend
:: to harm or damage the Unisinos system or the user files in any way.
:: 
:: THIS FILE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
:: EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES
:: OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT.
:: IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
:: FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
:: OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN
:: CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

@echo off
echo --------------------------------------------
echo  F4LK0N's Unisinos Windows Image Customizer 
echo --------------------------------------------
::###############################################
:: CUSTOMIZABLE VARS
::###############################################
::Adjust this for your user name on Unisinos.
::The same you use for login.
:: set "user=osoria"
set "user=userNameHere"
::This vars can be set to enable/disable features.
::value: true == feature enabled.
set "customizeNpp=true"
set "customizeExplorer=true"
::###############################################
:: DO NOT MODIFY
::###############################################
set nppPath=C:\Users\%user%\AppData\Roaming\Notepad++\test
::###############################################
echo Customizing environment for:
echo User: %user%
echo ---------------------------------------



::###############################################
:: NOTEPAD++
::###############################################
if "%customizeNpp%"=="true" (
    echo Customizing Notepad++
    xcopy /S /Y "Notepad++" %nppPath%
    echo ---------------------------------------
)



::###############################################
:: EXPLORER
::###############################################
if "%customizeExplorer%"=="true" (
    echo Customizing Explorer
    regedit.exe /S "%~dp0\Explorer\TaskbarNeverGroupWindows.reg"
    echo ---------------------------------------
)



::###############################################
pause
::###############################################