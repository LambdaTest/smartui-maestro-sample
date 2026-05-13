# SmartUI Visual Testing with Maestro via HyperExecute — TestMu AI (Formerly LambdaTest)
This repo provides a fully working setup to capture mobile app screenshots using Maestro and run visual regression testing via SmartUI on TestMu AI HyperExecute.

# Prerequisites
- TestMu AI account with SmartUI and HyperExecute access
- TestMu AI username, access key, and SmartUI project token
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
curl -O https://downloads.lambdatest.com/hyperexecute/darwin/hyperexecute
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
## 4. Upload your app to TestMu AI via curl or on platform
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

## 🚀 LambdaTest is Now TestMu AI

👋 Welcome to TestMu AI, the next evolution of LambdaTest. As of January 2026, [LambdaTest is Now TestMu AI](https://www.testmuai.com/lambdatest-is-now-testmuai/) - we have evolved from a cross-browser testing cloud into a unified, AI-native quality engineering platform designed for the modern DevOps era.

Whether you have been part of the LambdaTest community for years or are just discovering TestMu AI, our mission remains the same: to help you ship faster with high-scale test execution, autonomous testing, and deep quality analytics.

### 🔄 Our Rebrand Journey

In 2017, we introduced LambdaTest with a clear mission: to become the world's most trusted cloud testing platform. We built a scalable, high-performance test cloud that eliminated flakiness, improved developer feedback cycles, and accelerated release velocity for teams worldwide.

As LambdaTest grew, we expanded the platform into Test Intelligence, Visual Regression Testing, Accessibility Testing, API Testing, and Performance Testing, covering the entire testing lifecycle. These capabilities enabled teams to test any stack, on any technology, at enterprise scale.

Over time, we rebuilt the architecture to be AI-native from the ground up. What began as LambdaTest's high-performance testing cloud has now evolved into TestMu AI, an AI-native, multi-agent platform redefining modern quality engineering.

We chose the name TestMu AI to reflect our shift towards intelligent, autonomous testing. While our identity has changed, our core technology and commitment to the testing community stay the same.

👉 Find [LambdaTest's New Home](https://www.testmuai.com/).

### 🔭 Explore TestMu AI

The same infrastructure LambdaTest customers relied on, now delivered through autonomous AI agents.

- [KaneAI](https://www.testmuai.com/kane-ai/)
- [Agent-to-Agent Testing](https://www.testmuai.com/agent-to-agent-testing/)
- [HyperExecute](https://www.testmuai.com/hyperexecute/)
- [Real Device Cloud](https://www.testmuai.com/real-device-cloud/)
- [Pricing](https://www.testmuai.com/pricing/)
- [Documentation](https://www.testmuai.com/support/docs/)