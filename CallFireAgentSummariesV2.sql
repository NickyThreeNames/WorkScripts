SELECT CallFireAgentDetailsFinal.[Phone Number], [Phones11-3].Phone, CallFireAgentDetailsFinal.LoggedInDate, CallFireAgentDetailsFinal.Duration, CallFireAgentDetailsFinal.Calls, [Phones11-3].Name, [Phones11-3].Org

FROM [Phones11-3] RIGHT JOIN CallFireAgentDetailsFinal ON [Phones11-3].Phone = CallFireAgentDetailsFinal.[Phone Number]

WHERE (((CallFireAgentDetailsFinal.LoggedInDate)=#11/3/2012#));

SELECT CallFireAgentDetailsFinal.[Phone Number], [Phones11-4].Phone, CallFireAgentDetailsFinal.LoggedInDate, CallFireAgentDetailsFinal.Duration, CallFireAgentDetailsFinal.Calls, [Phones11-4].Name, [Phones11-4].Org

FROM [Phones11-4] RIGHT JOIN CallFireAgentDetailsFinal ON [Phones11-4].Phone = CallFireAgentDetailsFinal.[Phone Number]

WHERE (((CallFireAgentDetailsFinal.LoggedInDate)=#11/4/2012#));

SELECT CallFireAgentDetailsFinal.[Phone Number], [Phones11-5].Phone, CallFireAgentDetailsFinal.LoggedInDate, CallFireAgentDetailsFinal.Duration, CallFireAgentDetailsFinal.Calls, [Phones11-5].Name, [Phones11-5].Org

FROM [Phones11-5] RIGHT JOIN CallFireAgentDetailsFinal ON [Phones11-5].Phone = CallFireAgentDetailsFinal.[Phone Number]

WHERE (((CallFireAgentDetailsFinal.LoggedInDate)=#11/5/2012#));

SELECT CallFireAgentDetailsFinal.[Phone Number], [Phones11-6].Phone, CallFireAgentDetailsFinal.LoggedInDate, CallFireAgentDetailsFinal.Duration, CallFireAgentDetailsFinal.Calls, [Phones11-6].Name, [Phones11-6].Organization

FROM [Phones11-6] RIGHT JOIN CallFireAgentDetailsFinal ON [Phones11-6].Phone = CallFireAgentDetailsFinal.[Phone Number]

WHERE (((CallFireAgentDetailsFinal.LoggedInDate)=#11/6/2012#));