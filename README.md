# Resume Tailor Backend API

## Prerequisites
- Python 3.9+
- Google Gemini API Key

## Installation

1. **Create and activate a virtual environment:**
   ```bash
   # Mac/Linux
   python3 -m venv venv
   source venv/bin/activate
   
   # Windows
   python -m venv venv
   .\venv\Scripts\activate

2. **Install dependencies:**

``Bash
pip install -r requirements.txt
Install Playwright Browsers (Required for web scraping):``

Bash
playwright install chromium
Environment Variables:
Create a .env file in the same folder and add your API key:

Code snippet
GEMINI_API_KEY=your_actual_api_key_here
Running the Application
Start the development server using Uvicorn:

Bash
uvicorn main:app --reload
The API will be running at http://localhost:8000.

Testing
You can test the endpoint via Postman or cURL:

Bash
curl --location 'http://localhost:8000/api/tailor-resume' \
--form 'jd_url="[https://example.com/job-description](https://example.com/job-description)"' \
--form 'resume=@"/absolute/path/to/your/resume.pdf"'# resume-tailor-backend
