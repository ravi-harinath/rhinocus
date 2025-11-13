# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Seeding data..."

# --- Services ---
Service.destroy_all

services = [
  {
    title: "Web Application Development",
    description: "We build secure, scalable, and maintainable web applications using Ruby on Rails, Hotwire, React (optional), and modern cloud stacks."
  },
  {
    title: "Cloud & DevOps Solutions",
    description: "We help companies design CI/CD pipelines, cloud deployments, containerized solutions, microservices, and AWS/GCP infrastructures."
  },
  {
    title: "AI & Automation",
    description: "We build AI-assisted tools, automated workflows, and intelligent business systems using LLM, NLP, and data-driven automation."
  },
  {
    title: "Mobile App Development",
    description: "Cross-platform mobile apps built with Flutter / React Native integrated with a Rails backend API for seamless performance."
  },
  {
    title: "Custom Software Development",
    description: "End-to-end custom software solutions tailored specifically to your business needs, built for performance and long-term growth."
  }
]

Service.create!(services)
puts "Created #{Service.count} services."


# --- Products ---
Product.destroy_all

products = [
  {
    name: "Rhinocus Core",
    description: "A modular, cloud-ready enterprise backbone designed for SMEs and startups. Includes user management, billing, analytics, notifications, and API integrations."
  },
  {
    name: "CampusOne (Beta)",
    description: "A modern school/college management system built with Rails + Turbo. Features attendance, academics, fee management, role-based access, and staff/student portals."
  }
]

Product.create!(products)
puts "Created #{Product.count} products."


# --- Jobs ---
Job.destroy_all

jobs = [
  {
    title: "Senior Ruby on Rails Developer",
    location: "Hyderabad",
    exp_required: "3+ years",
    skills: "Ruby, Rails, PostgreSQL, APIs, JavaScript, Bootstrap",
    description: "Responsible for building scalable backend systems, REST APIs, and product modules. Experience with deployment and Git workflows preferred."
  },
  {
    title: "Frontend Engineer",
    location: "Remote",
    exp_required: "2+ years",
    skills: "HTML, CSS, JavaScript, Bootstrap, React (optional)",
    description: "Work with product designers to create responsive UI components. Experience with Bootstrap, Figma, or React is a plus."
  },
  {
    title: "QA Engineer",
    location: "Hyderabad / Remote",
    exp_required: "1+ years",
    skills: "Manual Testing, Automation (optional), Selenium",
    description: "Perform manual testing, write test cases, and ensure product quality before deployment."
  }
]

Job.create!(jobs)
puts "Created #{Job.count} job openings."


puts "Seeding complete! 🚀"
