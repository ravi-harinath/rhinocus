# Rhinocus Tech Labs Website

A modern, full-stack Ruby on Rails application built for **Rhinocus Tech Labs Pvt Ltd**.  
This project serves as the official corporate website showcasing:

- Company information
- Services offered
- Products
- Careers / Job listings
- Contact form
- Job applications

The project uses **Rails 7.2**, **PostgreSQL**, **Bootstrap 5**, and **ERB templates**.

---

## 🚀 Features

### **✔ Corporate Website Pages**
- Home page with services, featured product, and open positions
- About page
- Services list & detail pages
- Product showcase pages
- Careers page with job details
- Contact page
- Job application form

### **✔ Tech Stack**
- Ruby on Rails 7.2
- PostgreSQL
- Bootstrap 5 (cssbundling-rails)
- Turbo & Stimulus (Hotwire)
- Inter Google Font

### **✔ Clean, Modern UI**
- Custom branding colors
- Responsive Bootstrap layout
- Polished navbar & footer
- Professionally styled cards & sections

---

## 🛠 Installation & Setup

### **1. Clone the Repository**
```bash
git clone https://github.com/YOUR_USERNAME/rhinocus_website.git
cd rhinocus_website
```

### **2. Install Dependencies**
```bash
bundle install
```

### **3. Setup the Database**
```bash
rails db:create
rails db:migrate
rails db:seed
```

### **4. Start the Server**
```bash
rails server
```
Visit: **http://localhost:3000**

---

## 📦 Project Structure
```
app/
  controllers/
  models/
  views/
    home/
    services/
    products/
    jobs/
    applications/
    contact_messages/
  assets/
    stylesheets/ (Bootstrap + custom SCSS)
config/
db/
```

---

## 🌱 Seeding Sample Data
The project includes sample Services, Products, and Job listings.
Run:
```bash
rails db:seed
```

---

## 🚧 Upcoming Enhancements
- Admin Panel (Devise)
- Image uploads with Active Storage
- Contact/Application email notifications
- Product screenshots
- Logo & branding files
- Deployment to Render/Railway

---

## 📄 License
This project is owned by **Rhinocus Tech Labs Pvt Ltd**.
All rights reserved.

---

## 💬 Contact
For queries or contributions, reach out to:
**contact@rhinocus.com** (placeholder)
