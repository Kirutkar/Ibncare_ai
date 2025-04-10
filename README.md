# 🩺 IbnCare AI – Your Personal Health & Wellness Assistant

**IbnCare AI** is a simple yet thoughtful AI-powered health assistant built to provide gentle health support, symptom tracking, and emotional reassurance. It allows users to chat about their health, log symptoms, manage chronic conditions, and export a personal health summary – all in a clean, mobile-friendly interface.

---

## 🌟 Key Features
- 🤖 Health-focused AI Chatbot (English + Arabic support)
- 📝 Log Day-to-Day Symptoms
- 🩺 Track Chronic Medical Conditions
- 📤 Export Personalized Health Summary (PDF)
- 📑 Upload Medical Scans/Reports for Simple Summarization
- 🎙️ Voice Input Support (English & Arabic)
- 🧘 Daily Affirmations & Gentle Health Tips

---

## 🗂️ Project Structure

ai_medcare_project/ 

│

├── app.py # Flask backend (handles all API routes) 

├── streamlit_ui.py # Streamlit frontend (mobile-friendly health assistant)

├── utils.py # Image preprocessing for scan uploads 

├── ibncare_banner.png # UI banner image for branding

├── requirements.txt # Python dependencies

└── .env # Environment variables (Google API, MySQL DB) – NOT pushed to GitHub


---

⚙️ Setup Instructions
1. 🔐 .env File

Create a .env file in the root directory with the following:

ini
Copy
Edit
GOOGLE_API_KEY=your_google_key  
MYSQL_HOST=your_host  
MYSQL_USER=your_user  
MYSQL_PASSWORD=your_password  
MYSQL_DATABASE=your_database_name  

2. 🧪 Install Dependencies

Install all required Python packages using:


pip install -r requirements.txt

3. 🧠 Run the App

# Start the Flask Backend
python app.py

# In a separate terminal, launch the Streamlit Frontend
streamlit run streamlit_ui.py

🚀 What's Unique?

A gentle, human-centered approach to health

Arabic + English voice input and chatbot replies

Thoughtful logic for symptoms + medical history + personalization

Simple scan upload feature with AI explanation

Export-ready health summary for personal use or doctor visits


📷 Sneak Peek

![image](https://github.com/user-attachments/assets/0a28fee7-5671-4b10-8233-64879978a880)


🧠 Note

This project was built with care and simplicity in mind – no advanced NLP libraries or ML models used, only thoughtful use of Google Gemini API and practical healthcare flows. It's designed to feel like a helpful friend in your pocket 💚

👩‍💻 Author

Built by:Kiruthika Ramalingam

For: AI Application Challenge 2025 – Final Submission

Project Goal: Help users feel seen, cared for, and supported.






