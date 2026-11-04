---
name: follow-up-email
description: Drafts a short, customer-ready follow-up email after a sales call, based on call notes, a call summary, or a transcript. Use whenever the user asks for a follow-up email, recap email, "thank you" note after a meeting, or says "draft an email to the customer", even if they don't mention the call by name. Works well right after the call-notes-summarizer skill.
---

# Follow-Up Email

Write a follow-up the customer can read in under a minute and act on.

## Steps

1. Use the call notes or summary already in the conversation. If there are none, ask the user to paste them.
2. Identify: the recipient's name, what they said mattered most to them, and the agreed next steps with owners and dates.
3. Draft the email using the structure below.
4. Show the draft only. Never send it or imply it was sent.
5. Offer one quick adjustment, such as "shorter", "more formal", or "add a meeting link line".

## Structure

- **Subject:** specific and short, e.g. "Next steps from our call: [topic]"
- **Opening (1 sentence):** thank them and name one specific thing from the call.
- **What we heard (1 to 2 sentences):** their main need in their own terms.
- **Next steps:** bullet list, each with an owner and a date. Customer-side items and our items both appear.
- **Close (1 sentence):** one clear ask, usually confirming a time or sending a missing item.

## Rules

- Under 150 words in the body.
- Only include commitments that are in the notes. If a date or owner is missing, use a bracket like [date to confirm] and tell the user.
- Do not include internal notes, pricing opinions, or objections the customer did not voice.
- No filler like "I hope this email finds you well".
- Match the tone of the call. If unclear, be warm and professional.

For tone variants and an example, see `references/example.md`.
