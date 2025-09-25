// import { StatusBar } from "expo-status-bar";
// <StatusBar style="light" />
import React from "react";
import { StatusBar } from "expo-status-bar";
import AppNavigator from "./navigation/AppNavigator";
import Constants from "expo-constants";

export default function App() {
  console.log("OpenAI Key (for debug):", Constants.expoConfig.extra.OPENAI_API_KEY); // You can remove this in production

  return (
    <>
      <StatusBar style="light" />
      <AppNavigator />
    </>
  );
}
