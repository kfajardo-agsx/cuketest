Feature: Login a user

Scenario Outline:
   * A user with username qa_musashi and password 123qweqa <Can or Cannot Login> using credentials <Username>, <Password>
   
   Scenarios:
   | Username   | Password | Can or Cannot Login |
   | qa_musashi | 123qweqa | Can Login           |
   | QA_MUSASHI | 123qweqa | Cannot Login        |