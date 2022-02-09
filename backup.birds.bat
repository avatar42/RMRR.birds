C:
rem only needed to tee log to screen and file
PATH=C:\cygwin\bin;%PATH%

rem vars that may change
rem model name
set MNAME=birds
rem folder name which is used as default project name
set MFOLD=RMRR.birds

cd C:\DeepStackWS\deepstack
cp -p %MNAME%.trainTest.log C:\DeepStackWS\%MFOLD%

cd C:\DeepStackWS\deepstack-trainer
mkdir C:\DeepStackWS\%MFOLD%\train-runs
cp -p %MNAME%.train.log C:\DeepStackWS\%MFOLD%\train-runs

cd C:\DeepStackWS\deepstack-trainer\train-runs\%MFOLD%\%MNAME%
find . -type f -print | cpio -pvumd C:\DeepStackWS\%MFOLD%\train-runs

cp -p C:\DeepStackWS\deepstack-trainer\train-runs\%MFOLD%\%MNAME%\weights\best.pt C:\DeepStackWS\%MFOLD%\%MNAME%.pt
cp -p C:\DeepStackWS\%MFOLD%\train\classes.txt C:\DeepStackWS\%MFOLD%\%MNAME%_classes.txt

pause


