-- 创建用户年龄表
CREATE TABLE user_age
(
    id               BIGINT PRIMARY KEY, -- 唯一标识每条年龄记录的ID
    user_id          BIGINT NOT NULL,    -- 用户唯一标识，使用BIGINT类型，非空
    age              INT,                -- 用户年龄
    source_system_id INT    NOT NULL     -- 数据来源系统的ID，非空
);

-- 为 user_id 添加索引，方便按用户查找所有年龄记录
CREATE INDEX idx_user_id ON user_age (user_id);

-- 创建系统采信度表
CREATE TABLE system_credibility
(
    system_id         INT PRIMARY KEY,       -- 系统唯一标识，作为主键
    system_name       VARCHAR(255) NOT NULL, -- 系统名称，非空
    credibility_score INT          NOT NULL  -- 系统的采信度分数，越高越可信，非空
);

-- 初始化系统数据
insert into system_credibility
values (1, 'CRM系统', 90),
       (2, 'KYC系统', 85),
       (3, '风控系统', 75),
       (4, '人脸识别系统', 60),
       (5, '数据仓库系统', 50),
       (6, '营销系统', 40);