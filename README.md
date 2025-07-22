# SmartUI Visual Testing with Maestro via HyperExecute
This repo provides a fully working setup to capture mobile app screenshots using Maestro and run visual regression testing via SmartUI on LambdaTest HyperExecute.

# Prerequisites
- LambdaTest account with SmartUI and HyperExecute access
- LambdaTest username, access key, and SmartUI project token
- Your mobile app file (.apk or .ipa)

# How to Use This Repo

## 1.  Clone the repo
```
git clone https://github.com/lambdatest/smartui-maestro-sample.git
cd smartui-maestro-sample
```
## 2. Install CLI dependencies

### Install HyperExecute CLI and make it executable
```
curl -O https://downloads.lambdatest.com/hyperexecute/linux/hyperexecute
chmod +x hyperexecute
``` 
### Install SmartUI CLI
```
npm install -g @lambdatest/smartui-cli
```

## 3. Set your credentials
```
export LT_USERNAME="your_username"
export LT_ACCESS_KEY="your_access_key"
```
## 4. Upload your app to LambdaTest via curl or on platform
```
curl -u "$LT_USERNAME:$LT_ACCESS_KEY"
-X POST "https://manual-api.lambdatest.com/app/upload/realDevice"
-F "appFile=@./sample.apk"
-F "name=SampleApp"
```
```
https://applive.lambdatest.com/app
```
```
https://app.lambdatest.com/console/realtime/app
```
Copy the returned appId for use in Real Device YAML config.

## 5. Configure your project token and app ID

Update the following in the relevant YAML files (yaml/maestro_*.yaml):
```
env:
  MAESTRO: true
  PROJECT_TOKEN: <your-project-token>  
framework:
  args:
    appId: lt://<appId>
```

## 6. Run tests on HyperExecute
For Virtual Device implementation:
```
./hyperexecute --config yaml/maestro_Emulator_HyperEx.yaml
```
For Real Device execution:
```
./hyperexecute --config yaml/maestro_Real_Devices.yaml
```

## 7. View your results

SmartUI Build Dashboard: https://smartui.lambdatest.com/

HyperExecute Job Dashboard: https://hyperexecute.lambdatest.com/
