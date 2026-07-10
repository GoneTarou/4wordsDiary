```mermaid
erDiagram
    USERS ||--o{ SESSIONS : has
    USERS ||--o{ DIARIES : has
    USERS ||--o{ OAUTH : has

    USERS {
        bigint id PK
        string email UK
        string password_digest
        datetime created_at
        datetime updated_at
    }

    SESSIONS {
        bigint id PK
        bigint user_id FK
        string ip_address
        string user_agent
        datetime created_at
        datetime updated_at
    }

    OAUTH {
        bigint id PK
        bigint user_id FK
        string provider
        string uid
        datetime created_at
        datetime updated_at
    }

    DIARIES {
        bigint id PK
        bigint user_id FK
        date diary_date
        string mood
        text body
        boolean published
        datetime created_at
        datetime updated_at
    }
