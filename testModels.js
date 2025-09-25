const fetch = require("node-fetch");

const YOUR_API_KEY = "sk-..."; // ← paste your real OpenAI API key here

fetch("https://api.openai.com/v1/models", {
  headers: {
    Authorization: `Bearer ${YOUR_API_KEY}`,
  },
})
  .then((res) => res.json())
  .then((data) => {
    console.log("✅ Models available to your key:");
    data.data.forEach((model) => {
      console.log("→", model.id);
    });
  })
  .catch((err) => {
    console.error("❌ Error fetching models:", err);
  });
 