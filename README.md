# Vaccine Passport made with privacy in mind by Julia Pak
**Note I will most likely move this project to ADA Cardano when the time is right. I feel as if this project is better suited for that network.I'm patiently waiting. Plus Haskell and Plutus look like a steep learning-curve.**

**May 23 2021: NOTE that is project is not complete.No where near it, still needs ALOT of work.No test cases done yet. And the code thusfar is only the client side**
This is a block chain vaccine validation app. This app is based on the Ethereum smart contracts. Vaccines are slowly but surely making their way into people's arms around the world. As this happens, to protect citizens, governments around the globe will most likely be introducing changes to the rules of entry/exit for travellers involving the proof of mandatory vaccination with one of the certified vaccines.

![Simulator Screen Shot - iPhone 11 Pro Max - 2021-05-22 at 19 56 47](https://user-images.githubusercontent.com/41366455/119243867-b2f69800-bb38-11eb-8731-866f630adf3c.png)

# Addressing the issues surrounding People being physically assaulted or attacked due to these apps in general

There are a few important concerns to account for in this new reality, and thus the design of these apps has to be taken seriously as to not infringe on the rights of individuals and to uphold high standards. Blockchain naturally fits into the concept of sovereignty — each country decides to join the consortium or retract at its own free will, when it sees it appropriate and keeps all the data and admittance controls at its own hands, protecting and guarding them at the national level as required by law. An extremely constrained set of data (vaccination certificates and data required to validate them) is going to be shared among participating countries for the common benefit of keeping the virus at bay.
Taking a look at a few apps on the market already, I was thinking I could do these apps better, as I saw some practices I did not quite like- mainly to do with people storing information in databases and showing highly detailed information that's irrelevant and perhaps too sensitive(I really don't think the guy at Border counter needs to know the brand name of the vaccine you got and the date you received it, HOWEVER he would need to know that your vaccine is valid, on the official approval list and is within the acceptable date range).
# Set up the dev environment
You will need to have flutter which can be found here: https://github.com/flutter/flutter
<br><br>
But I suppose since you're here already you have made a few projects with Flutter and are not a newb ;). You've tried things like Firebase or ther AWS products and want to play with something new and you've heard about blockchain and the power of the decentralized future. This is not just another "backend", it is something truly unique :)<br><br>
Truffle is the most popular development framework for Ethereum with a mission to make your life a whole lot easier. But before we install truffle make sure to install node .
Once you have node installed, you only need one command to install Truffle: <br>
```
npm install -g truffle
```
# Structure
- **contracts/** : Contains solidity contract file.
- **migrations/** : Contains migration script files (Truffle uses a migration system to handle contract deployment).
- **test/**: Contains test script files.
- **lib/**: Your flutter UI project is here!
- **lib/contract_linker**: Linker info goes here.
- **truffle-config.js** : Contains truffle deployment configurations information.
<img width="189" alt="today" src="https://user-images.githubusercontent.com/41366455/119244750-927f0b80-bb41-11eb-8d05-5516f243b9c1.png">
We will also be using Ganache, a personal blockchain for Ethereum development you can use to deploy smart contracts, develop applications, and run tests. You can download Ganache by navigating to http://truffleframework.com/ganache and clicking the “Download” button.<br>
# Link Contract
<br><br>
You can get the RPC URL from the ganache :<br><br>
<img width="1190" alt="ganche" src="https://user-images.githubusercontent.com/41366455/119244942-4c2aac00-bb43-11eb-993b-e4f4adf90372.png">
<br><br>Next Get the Private Key from ganache by clicking on key image:<br><br>
<img width="529" alt="clickkey" src="https://user-images.githubusercontent.com/41366455/119245125-babc3980-bb44-11eb-8985-a3cf9633de85.png">
<br><br>Keys:<br><br>
<img width="334" alt="privekey" src="https://user-images.githubusercontent.com/41366455/119245138-d8899e80-bb44-11eb-9d5e-18bdfbe24202.png"><br><br>
edit this file: Insert yours key and other info where needed!<br>
<img width="263" alt="linker" src="https://user-images.githubusercontent.com/41366455/119244924-29989300-bb43-11eb-855a-2e68ac80f990.png">
<br><br>
<img width="427" alt="linkers" src="https://user-images.githubusercontent.com/41366455/119245247-a75d9e00-bb45-11eb-8fb0-4fa7e7cd110a.png">
# How does this app work?
I built in automation from the get go. Person walks up to check in kiosk or counter and scans in. No intervention from security is needed
<img width="911" alt="Screen Shot 2021-05-22 at 7 54 27 PM" src="https://user-images.githubusercontent.com/41366455/119243873-c570d180-bb38-11eb-9fcb-f197c00fc890.png"><br>\* \* This is a high level overview of what happens
# A note about the contract and project
I sorta want to deploy this for cardano (ADA), but I realize smart contracts are not here yet. Ethereum gas fees are pretty expensive, and I sorta feel as if the heart of this should be with ADA Cardano.
# If you wish to donate or contact me
My LinkedIn: https://www.linkedin.com/in/julia-pak0444<br><br>
- if you wish to donate heres my PayPal https://www.paypal.com/paypalme/julzpak<br><br>
  OR Here is BTC address:
```
 189JGpmZssvJtJuoEmskDcCydhhZtDxJQn
```
<img width="483" alt="Screen Shot 2021-05-19 at 7 03 28 PM" src="https://user-images.githubusercontent.com/41366455/119244190-f30b4a00-bb3b-11eb-8918-9318345a13bd.png"><br><br>
# Donate ADA Cardano
Send to this address:
```
DdzFFzCqrht3DeEfx6b8y4oERARDANN3fqp58q1qtXLKjnTcspsQtN9Gfovu224rBkPJbRk9ABBjzZhEovxQ8wQhtPnYsKTFqrZrEzyY
```
<br>
<img width="490" alt="Screen Shot 2021-05-22 at 8 37 32 PM" src="https://user-images.githubusercontent.com/41366455/119244363-e556c400-bb3d-11eb-8829-e7247a6034cc.png">
