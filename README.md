# 🌐 Project Overview
The DBank web app is a decentralized banking application built using the Internet Computer Protocol (ICP). It utilizes Motoko (a language specifically designed for ICP) for the backend logic and JavaScript, HTML, and CSS for the frontend. The app allows users to:

-Deposit (Top Up) funds.

-Withdraw funds.

-View real-time balance updates.

-Store balances in persistent memory on the Internet Computer.

# 💡 Tech Stack
Backend: Motoko (for canister logic)

Frontend: HTML, CSS, JavaScript (Webpack for bundling)

ICP SDK: Deployed on the Internet Computer Protocol

Candid: Defines the API interface between the frontend and backend

# 🚀 Deployment Instructions

## Start the ICP local network
dfx start

## Deploy the app

dfx deploy
npm start

## Launch the app

dfx canister call dbank topUp '(100)'    # Add 100 units

dfx canister call dbank checkBalance     # Check balance

## Access the web app

Open the browser: http://localhost:8000
