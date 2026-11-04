---
name: call-notes-summarizer
description: Turns raw sales call notes or a transcript into a consistent, shareable summary (attendees, pain points, objections, next steps, owners and dates). Use whenever the user pastes call notes, a transcript, or meeting minutes from a customer or prospect call, or asks to "summarize the call", "write up the call", or "recap the meeting", even if they don't say "summary".
---

# Call Notes Summarizer

Produce the same structure every time so teammates can scan any call recap in seconds.

## Steps

1. Read the notes or transcript the user provided. If nothing was pasted or attached, ask for it.
2. Fill in the template below. Use only what the notes support.
3. If a section has no information, write "Not discussed". Do not guess or invent details.
4. Keep the whole summary under 250 words unless the user asks for more.
5. End by asking if the user wants a follow-up email drafted from the next steps.

## Output template

**Call:** [Company] | [Date] | [Call type, e.g. discovery, demo, renewal]
**Attendees:** [Name, role] (customer side) / [Name, role] (our side)

**Summary:** 2 to 3 sentences on what the call was about and the outcome.

**Pain points / needs**
- ...

**Objections or concerns**
- ... (include how we responded, if at all)

**Next steps**
| Action | Owner | Due |
|---|---|---|
| ... | ... | ... |

**Open questions:** anything unresolved that needs an answer before the next call.

## Style notes

- Plain language, no filler.
- Names and titles exactly as written in the notes.
- Dates as written; if the notes say "next Friday" and no call date is given, keep "next Friday" rather than computing a date.

For a worked example of a good summary, see `references/example.md`.
