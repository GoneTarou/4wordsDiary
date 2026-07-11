```mermaid
erDiagram
    USERS ||--o{ SESSIONS : has
    USERS ||--o{ DIARIES : has
    USERS ||--o{ OAUTH : has

    USERS {
        bigint id PK
        string email UK
        string username
        string password_digest
        boolean guest
        datetime guest_expires_at
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
        text body
        boolean published
        datetime created_at
        datetime updated_at
    }
