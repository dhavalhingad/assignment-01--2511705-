## Vector DB Use Case

A traditional keyword-based search would not be sufficient for searching large legal contracts. Keyword search relies on exact word matching and may fail to capture the true meaning of a query. For example, a lawyer searching for "termination clauses" might miss relevant sections that use different wording such as "contract cancellation terms."

Vector databases solve this problem by using embeddings, which capture the semantic meaning of text rather than just keywords. This allows the system to understand the intent behind a query and retrieve relevant sections even if the exact words are not present.

In this system, each section of the contract would be converted into vector embeddings and stored in a vector database. When a user asks a question, the query is also converted into an embedding, and similarity search is performed to find the most relevant sections.

This approach enables more accurate and context-aware search, making it highly suitable for legal applications where understanding meaning is critical.