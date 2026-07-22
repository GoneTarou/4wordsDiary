```mermaid
erDiagram
    USERS ||--o{ SESSIONS : has
    USERS ||--o{ DIARIES : has

    USERS {
        bigint id PK
        string email UK
        string nickname
        string password_digest
        string google_uid UK
        boolean guest
        datetime created_at
        datetime updated_at
    }

    SESSIONS {
        bigint id PK
        bigint user_id FK
        datetime created_at
        datetime updated_at
    }

    DIARIES {
        bigint id PK
        bigint user_id FK
        text body
        boolean published
        datetime created_at
        datetime updated_at
    }

