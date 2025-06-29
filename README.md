# Rehearsal Manager

Web application for scheduling band rehearsals, sending reminders, tracking attendance, and suggesting optimal rehearsal times.

## Features
- Calendar management for rehearsals, performances, and bookings
- Event creation with invitations
- RSVP and attendance tracking
- Automated email/SMS reminders
- User roles: admin/leader/member
- Self-service booking and availability
- Integration with Google Calendar/Zoom
- Recurring event support
- (Optional) resource management for rooms/equipment
- Feedback collection

## Tech Stack
- Frontend: React.js
- Backend: Node.js (Express)
- Database: PostgreSQL
- Notifications: Twilio, nodemailer
- Deploy: AWS EC2 or Heroku

## Setup Instructions
1. Clone this repo
2. Install Node.js dependencies
3. Set up PostgreSQL DB
4. Add .env for API keys and DB config
5. Start backend: `npm run server`
6. Start frontend: `npm run client`
7. Deploy with Docker/AWS/Heroku as needed

## Security
- Use HTTPS
- Store credentials securely
- Use parameterized queries

## License
MIT
