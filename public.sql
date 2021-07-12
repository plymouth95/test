/*
 Navicat Premium Data Transfer

 Source Server         : Electron
 Source Server Type    : PostgreSQL
 Source Server Version : 90620
 Source Host           : 192.168.35.5:5432
 Source Catalog        : MinistryHealthNPA
 Source Schema         : public

 Target Server Type    : PostgreSQL
 Target Server Version : 90620
 File Encoding         : 65001

 Date: 12/07/2021 12:38:41
*/


-- ----------------------------
-- Sequence structure for logs_id_seq
-- ----------------------------
DROP SEQUENCE IF EXISTS "public"."logs_id_seq";
CREATE SEQUENCE "public"."logs_id_seq" 
INCREMENT 12
MINVALUE  1
MAXVALUE 9223372036854775807
START 1
CACHE 1;

-- ----------------------------
-- Table structure for AspNetRoleClaims
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetRoleClaims";
CREATE TABLE "public"."AspNetRoleClaims" (
  "Id" int4 NOT NULL,
  "RoleId" uuid,
  "ClaimType" text COLLATE "pg_catalog"."default",
  "ClaimValue" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for AspNetRoles
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetRoles";
CREATE TABLE "public"."AspNetRoles" (
  "Id" uuid NOT NULL,
  "Name" varchar(256) COLLATE "pg_catalog"."default",
  "NormalizedName" varchar(256) COLLATE "pg_catalog"."default",
  "ConcurrencyStamp" text COLLATE "pg_catalog"."default",
  "Description" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for AspNetUserClaims
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserClaims";
CREATE TABLE "public"."AspNetUserClaims" (
  "Id" int4 NOT NULL,
  "UserId" uuid,
  "ClaimType" text COLLATE "pg_catalog"."default",
  "ClaimValue" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for AspNetUserLogins
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserLogins";
CREATE TABLE "public"."AspNetUserLogins" (
  "LoginProvider" text COLLATE "pg_catalog"."default" NOT NULL,
  "ProviderKey" text COLLATE "pg_catalog"."default" NOT NULL,
  "ProviderDisplayName" text COLLATE "pg_catalog"."default",
  "UserId" uuid NOT NULL
)
;

-- ----------------------------
-- Table structure for AspNetUserRoles
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserRoles";
CREATE TABLE "public"."AspNetUserRoles" (
  "UserId" uuid NOT NULL,
  "RoleId" uuid NOT NULL
)
;

-- ----------------------------
-- Table structure for AspNetUserTokens
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUserTokens";
CREATE TABLE "public"."AspNetUserTokens" (
  "UserId" uuid NOT NULL,
  "LoginProvider" text COLLATE "pg_catalog"."default" NOT NULL,
  "Name" text COLLATE "pg_catalog"."default" NOT NULL,
  "Value" text COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for AspNetUsers
-- ----------------------------
DROP TABLE IF EXISTS "public"."AspNetUsers";
CREATE TABLE "public"."AspNetUsers" (
  "Id" uuid NOT NULL,
  "UserName" varchar(256) COLLATE "pg_catalog"."default",
  "NormalizedUserName" varchar(256) COLLATE "pg_catalog"."default",
  "Email" varchar(256) COLLATE "pg_catalog"."default",
  "NormalizedEmail" varchar(256) COLLATE "pg_catalog"."default",
  "EmailConfirmed" bool NOT NULL,
  "PasswordHash" text COLLATE "pg_catalog"."default",
  "SecurityStamp" text COLLATE "pg_catalog"."default",
  "ConcurrencyStamp" text COLLATE "pg_catalog"."default",
  "PhoneNumber" text COLLATE "pg_catalog"."default",
  "PhoneNumberConfirmed" bool NOT NULL,
  "TwoFactorEnabled" bool NOT NULL,
  "LockoutEnd" timestamptz(6),
  "LockoutEnabled" bool NOT NULL,
  "AccessFailedCount" int4 NOT NULL
)
;

-- ----------------------------
-- Table structure for __EFMigrationsHistory
-- ----------------------------
DROP TABLE IF EXISTS "public"."__EFMigrationsHistory";
CREATE TABLE "public"."__EFMigrationsHistory" (
  "MigrationId" varchar(150) COLLATE "pg_catalog"."default" NOT NULL,
  "ProductVersion" varchar(32) COLLATE "pg_catalog"."default" NOT NULL
)
;

-- ----------------------------
-- Table structure for data_change_log
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_change_log";
CREATE TABLE "public"."data_change_log" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "table_name_" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "field_name_" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "old_value" varchar(5000) COLLATE "pg_catalog"."default",
  "new_value" varchar(5000) COLLATE "pg_catalog"."default",
  "employees_name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "date_change" timestamp(6) NOT NULL DEFAULT now(),
  "commentt" varchar(1500) COLLATE "pg_catalog"."default",
  "table_name_base_" varchar(70) COLLATE "pg_catalog"."default",
  "field_name_base_" varchar(70) COLLATE "pg_catalog"."default",
  "row_id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "ip_address" varchar(20) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."data_change_log"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_change_log"."table_name_" IS 'наименование таблицы';
COMMENT ON COLUMN "public"."data_change_log"."field_name_" IS 'наименование поля';
COMMENT ON COLUMN "public"."data_change_log"."old_value" IS 'старое значение';
COMMENT ON COLUMN "public"."data_change_log"."new_value" IS 'новое значение';
COMMENT ON COLUMN "public"."data_change_log"."employees_name" IS 'сторудник';
COMMENT ON COLUMN "public"."data_change_log"."date_change" IS 'дата и время изменений';
COMMENT ON COLUMN "public"."data_change_log"."commentt" IS 'комментарий';
COMMENT ON COLUMN "public"."data_change_log"."table_name_base_" IS 'наименование таблицы в базе';
COMMENT ON COLUMN "public"."data_change_log"."field_name_base_" IS 'наименование поля в базе';
COMMENT ON COLUMN "public"."data_change_log"."ip_address" IS 'ip адрес';
COMMENT ON TABLE "public"."data_change_log" IS 'История изменений';

-- ----------------------------
-- Table structure for data_document
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document";
CREATE TABLE "public"."data_document" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "document_date" date NOT NULL,
  "document_number" varchar(10) COLLATE "pg_catalog"."default",
  "document_year" int4 NOT NULL,
  "is_remove" bool NOT NULL DEFAULT false,
  "employees_name_add" varchar(70) COLLATE "pg_catalog"."default",
  "date_add" timestamp(6) NOT NULL DEFAULT now(),
  "employees_name_modify" varchar(70) COLLATE "pg_catalog"."default",
  "date_modify" timestamp(6),
  "commentt_modify" varchar(255) COLLATE "pg_catalog"."default",
  "ip_address_add" varchar(20) COLLATE "pg_catalog"."default",
  "ip_address_modify" varchar(20) COLLATE "pg_catalog"."default",
  "spr_employees_id" uuid NOT NULL,
  "spr_document_form_id" uuid NOT NULL,
  "date_execution" date,
  "date_reglament" date,
  "spr_organization_structure_id" uuid NOT NULL,
  "spr_document_type_id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."data_document"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document"."document_date" IS 'Дата';
COMMENT ON COLUMN "public"."data_document"."document_number" IS 'Номер документа';
COMMENT ON COLUMN "public"."data_document"."document_year" IS 'Год документа';
COMMENT ON COLUMN "public"."data_document"."is_remove" IS 'Признак удаления записи';
COMMENT ON COLUMN "public"."data_document"."employees_name_add" IS 'Кто добавил запись';
COMMENT ON COLUMN "public"."data_document"."date_add" IS 'Дата и время добавления записи';
COMMENT ON COLUMN "public"."data_document"."employees_name_modify" IS 'Кто изменил запись';
COMMENT ON COLUMN "public"."data_document"."date_modify" IS 'Дата и время последних изменений';
COMMENT ON COLUMN "public"."data_document"."commentt_modify" IS 'Комментарий при изменении';
COMMENT ON COLUMN "public"."data_document"."ip_address_add" IS 'ip адрес добавившего';
COMMENT ON COLUMN "public"."data_document"."ip_address_modify" IS 'ip адрес изменившего';
COMMENT ON COLUMN "public"."data_document"."spr_employees_id" IS 'Сотрудник инициатор';
COMMENT ON COLUMN "public"."data_document"."spr_document_form_id" IS 'Вид документа';
COMMENT ON COLUMN "public"."data_document"."date_execution" IS 'Дата исполнения';
COMMENT ON COLUMN "public"."data_document"."date_reglament" IS 'Срок исполнения (Регламентная дата)';
COMMENT ON COLUMN "public"."data_document"."spr_organization_structure_id" IS 'Организационная структура';
COMMENT ON COLUMN "public"."data_document"."spr_document_type_id" IS 'Тип документа';
COMMENT ON TABLE "public"."data_document" IS 'Список документов';

-- ----------------------------
-- Table structure for data_document_bookmark
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_bookmark";
CREATE TABLE "public"."data_document_bookmark" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "spr_employees_id" uuid NOT NULL
)
;
COMMENT ON COLUMN "public"."data_document_bookmark"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_bookmark"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_bookmark"."spr_employees_id" IS 'Сотрудник';
COMMENT ON TABLE "public"."data_document_bookmark" IS 'Закладки';

-- ----------------------------
-- Table structure for data_document_control
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_control";
CREATE TABLE "public"."data_document_control" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "spr_employees_id" uuid NOT NULL
)
;
COMMENT ON COLUMN "public"."data_document_control"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_control"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_control"."spr_employees_id" IS 'Сотрудник контраолирующий';
COMMENT ON TABLE "public"."data_document_control" IS 'Контролирующие, для хранения контролирующие по документу';

-- ----------------------------
-- Table structure for data_document_edition
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_edition";
CREATE TABLE "public"."data_document_edition" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "document_text" text COLLATE "pg_catalog"."default" NOT NULL,
  "edition_date" date NOT NULL DEFAULT now(),
  "document_name" varchar(1000) COLLATE "pg_catalog"."default" NOT NULL,
  "is_remove" bool NOT NULL DEFAULT false,
  "employees_name_add" varchar(70) COLLATE "pg_catalog"."default",
  "date_add" timestamp(6) NOT NULL DEFAULT now(),
  "employees_name_modify" varchar(70) COLLATE "pg_catalog"."default",
  "date_modify" timestamp(6),
  "commentt_modify" varchar(255) COLLATE "pg_catalog"."default",
  "ip_address_add" varchar(20) COLLATE "pg_catalog"."default",
  "ip_address_modify" varchar(20) COLLATE "pg_catalog"."default",
  "number_sort" int4
)
;
COMMENT ON COLUMN "public"."data_document_edition"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_edition"."data_document_id" IS 'Главный документ';
COMMENT ON COLUMN "public"."data_document_edition"."document_text" IS 'Текст редакции для документа';
COMMENT ON COLUMN "public"."data_document_edition"."edition_date" IS 'Дата';
COMMENT ON COLUMN "public"."data_document_edition"."document_name" IS 'Наименование документа';
COMMENT ON COLUMN "public"."data_document_edition"."is_remove" IS 'Признак удаления записи';
COMMENT ON COLUMN "public"."data_document_edition"."employees_name_add" IS 'Кто добавил запись';
COMMENT ON COLUMN "public"."data_document_edition"."date_add" IS 'Дата и время добавления записи';
COMMENT ON COLUMN "public"."data_document_edition"."employees_name_modify" IS 'Кто изменил запись';
COMMENT ON COLUMN "public"."data_document_edition"."date_modify" IS 'Дата и время последних изменений';
COMMENT ON COLUMN "public"."data_document_edition"."commentt_modify" IS 'Комментарий при изменении';
COMMENT ON COLUMN "public"."data_document_edition"."ip_address_add" IS 'ip адрес добавившего';
COMMENT ON COLUMN "public"."data_document_edition"."ip_address_modify" IS 'ip адрес изменившего';
COMMENT ON COLUMN "public"."data_document_edition"."number_sort" IS 'Поле для последовательности';
COMMENT ON TABLE "public"."data_document_edition" IS 'Редакции';

-- ----------------------------
-- Table structure for data_document_executor
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_executor";
CREATE TABLE "public"."data_document_executor" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "spr_employees_id" uuid NOT NULL,
  "date_execution" date,
  "date_reglament" date,
  "commentt_execution" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."data_document_executor"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_executor"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_executor"."spr_employees_id" IS 'Сотрудник исполнитель';
COMMENT ON COLUMN "public"."data_document_executor"."date_execution" IS 'Дата исполнения';
COMMENT ON COLUMN "public"."data_document_executor"."date_reglament" IS 'Срок исполнения (Регламентная дата)';
COMMENT ON COLUMN "public"."data_document_executor"."commentt_execution" IS 'Отметка об исполнении';
COMMENT ON TABLE "public"."data_document_executor" IS 'Исполнитель, для хранения исполнителей по документу';

-- ----------------------------
-- Table structure for data_document_file
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_file";
CREATE TABLE "public"."data_document_file" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "file_name" varchar(400) COLLATE "pg_catalog"."default" NOT NULL,
  "file_ext" varchar(10) COLLATE "pg_catalog"."default" NOT NULL,
  "file_size" int4 NOT NULL,
  "is_remove" bool NOT NULL DEFAULT false,
  "employees_name_add" varchar(70) COLLATE "pg_catalog"."default",
  "date_add" timestamp(6) NOT NULL DEFAULT now(),
  "employees_name_modify" varchar(70) COLLATE "pg_catalog"."default",
  "date_modify" timestamp(6),
  "commentt_modify" varchar(255) COLLATE "pg_catalog"."default",
  "ip_address_add" varchar(20) COLLATE "pg_catalog"."default",
  "ip_address_modify" varchar(20) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."data_document_file"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_file"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_file"."file_name" IS 'имя файла';
COMMENT ON COLUMN "public"."data_document_file"."file_ext" IS 'расширение файла';
COMMENT ON COLUMN "public"."data_document_file"."file_size" IS 'размер файла';
COMMENT ON COLUMN "public"."data_document_file"."is_remove" IS 'Признак удаления записи';
COMMENT ON COLUMN "public"."data_document_file"."employees_name_add" IS 'Кто добавил запись';
COMMENT ON COLUMN "public"."data_document_file"."date_add" IS 'Дата и время добавления записи';
COMMENT ON COLUMN "public"."data_document_file"."employees_name_modify" IS 'Кто изменил запись';
COMMENT ON COLUMN "public"."data_document_file"."date_modify" IS 'Дата и время последних изменений';
COMMENT ON COLUMN "public"."data_document_file"."commentt_modify" IS 'Комментарий при изменении';
COMMENT ON COLUMN "public"."data_document_file"."ip_address_add" IS 'ip адрес добавившего';
COMMENT ON COLUMN "public"."data_document_file"."ip_address_modify" IS 'ip адрес изменившего';
COMMENT ON TABLE "public"."data_document_file" IS 'Файлы к документу';

-- ----------------------------
-- Table structure for data_document_manipulation
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_manipulation";
CREATE TABLE "public"."data_document_manipulation" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "data_document_id_parent" uuid NOT NULL
)
;
COMMENT ON COLUMN "public"."data_document_manipulation"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_manipulation"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_manipulation"."data_document_id_parent" IS 'Первичный документ';
COMMENT ON TABLE "public"."data_document_manipulation" IS 'Документы об изменении и удалении приказов';

-- ----------------------------
-- Table structure for data_document_signature
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_signature";
CREATE TABLE "public"."data_document_signature" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "spr_employees_id" uuid NOT NULL
)
;
COMMENT ON COLUMN "public"."data_document_signature"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_signature"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_signature"."spr_employees_id" IS 'Сотрудник';
COMMENT ON TABLE "public"."data_document_signature" IS 'Кто подписал документ  ';

-- ----------------------------
-- Table structure for data_document_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_document_status";
CREATE TABLE "public"."data_document_status" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "data_document_id" uuid NOT NULL,
  "spr_document_status_id" int4 NOT NULL,
  "status_date" timestamp(0) NOT NULL DEFAULT now(),
  "status_name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."data_document_status"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_document_status"."data_document_id" IS 'Документ';
COMMENT ON COLUMN "public"."data_document_status"."spr_document_status_id" IS 'Статус';
COMMENT ON COLUMN "public"."data_document_status"."status_date" IS 'Дата статуса';
COMMENT ON COLUMN "public"."data_document_status"."status_name" IS 'Наименование статуса';
COMMENT ON TABLE "public"."data_document_status" IS 'Статусы к документу';

-- ----------------------------
-- Table structure for data_notification
-- ----------------------------
DROP TABLE IF EXISTS "public"."data_notification";
CREATE TABLE "public"."data_notification" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "date_add" timestamp(6) NOT NULL DEFAULT now(),
  "notification_text" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "spr_employees_id" uuid NOT NULL,
  "date_read" timestamp(6),
  "data_document_id" uuid
)
;
COMMENT ON COLUMN "public"."data_notification"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."data_notification"."date_add" IS 'Дата уведомления';
COMMENT ON COLUMN "public"."data_notification"."notification_text" IS 'Текст уведомления';
COMMENT ON COLUMN "public"."data_notification"."spr_employees_id" IS 'Сотрудник';
COMMENT ON COLUMN "public"."data_notification"."date_read" IS 'Дата и время прочтения';
COMMENT ON COLUMN "public"."data_notification"."data_document_id" IS 'Документ';
COMMENT ON TABLE "public"."data_notification" IS 'Уведомления';

-- ----------------------------
-- Table structure for error_massages
-- ----------------------------
DROP TABLE IF EXISTS "public"."error_massages";
CREATE TABLE "public"."error_massages" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "message" text COLLATE "pg_catalog"."default",
  "inner_exception" text COLLATE "pg_catalog"."default",
  "stack_trace" text COLLATE "pg_catalog"."default",
  "spr_employees_fio" varchar(70) COLLATE "pg_catalog"."default",
  "date" timestamp(6) DEFAULT now(),
  "spr_employees_id" uuid
)
;
COMMENT ON COLUMN "public"."error_massages"."id" IS 'первичный ключ';
COMMENT ON COLUMN "public"."error_massages"."message" IS 'сообшение об ошибке';
COMMENT ON COLUMN "public"."error_massages"."spr_employees_fio" IS 'имя пользователя';
COMMENT ON COLUMN "public"."error_massages"."date" IS 'дата и время ошибка';
COMMENT ON COLUMN "public"."error_massages"."spr_employees_id" IS 'id пользователя,связь с spr_employees id';
COMMENT ON TABLE "public"."error_massages" IS 'список ошибок возникших в программе';

-- ----------------------------
-- Table structure for logs
-- ----------------------------
DROP TABLE IF EXISTS "public"."logs";
CREATE TABLE "public"."logs" (
  "id" int4 NOT NULL DEFAULT nextval('logs_id_seq'::regclass),
  "application" varchar(100) COLLATE "pg_catalog"."default",
  "logged" text COLLATE "pg_catalog"."default",
  "level" varchar(100) COLLATE "pg_catalog"."default",
  "message" varchar(8000) COLLATE "pg_catalog"."default",
  "logger" varchar(8000) COLLATE "pg_catalog"."default",
  "callsite" varchar(8000) COLLATE "pg_catalog"."default",
  "exception" varchar(8000) COLLATE "pg_catalog"."default"
)
;

-- ----------------------------
-- Table structure for spr_document_form
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_document_form";
CREATE TABLE "public"."spr_document_form" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "form_name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "is_remove" bool NOT NULL DEFAULT false,
  "employees_name_add" varchar(70) COLLATE "pg_catalog"."default",
  "date_add" timestamp(6) NOT NULL DEFAULT now(),
  "employees_name_modify" varchar(70) COLLATE "pg_catalog"."default",
  "date_modify" timestamp(6),
  "commentt_modify" varchar(255) COLLATE "pg_catalog"."default",
  "ip_address_add" varchar(20) COLLATE "pg_catalog"."default",
  "ip_address_modify" varchar(20) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."spr_document_form"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_document_form"."form_name" IS 'Наименование вида';
COMMENT ON COLUMN "public"."spr_document_form"."is_remove" IS 'Признак удаления записи';
COMMENT ON COLUMN "public"."spr_document_form"."employees_name_add" IS 'Кто добавил запись';
COMMENT ON COLUMN "public"."spr_document_form"."date_add" IS 'Дата и время добавления записи';
COMMENT ON COLUMN "public"."spr_document_form"."employees_name_modify" IS 'Кто изменил запись';
COMMENT ON COLUMN "public"."spr_document_form"."date_modify" IS 'Дата и время последних изменений';
COMMENT ON COLUMN "public"."spr_document_form"."commentt_modify" IS 'Комментарий при изменении';
COMMENT ON COLUMN "public"."spr_document_form"."ip_address_add" IS 'ip адрес добавившего';
COMMENT ON COLUMN "public"."spr_document_form"."ip_address_modify" IS 'ip адрес изменившего';
COMMENT ON TABLE "public"."spr_document_form" IS 'Вид документа';

-- ----------------------------
-- Table structure for spr_document_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_document_status";
CREATE TABLE "public"."spr_document_status" (
  "id" int4 NOT NULL,
  "status_name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "commentt" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."spr_document_status"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_document_status"."status_name" IS 'Наименование статуса';
COMMENT ON TABLE "public"."spr_document_status" IS 'Статус документа';

-- ----------------------------
-- Table structure for spr_document_type
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_document_type";
CREATE TABLE "public"."spr_document_type" (
  "type_name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "id" int4 NOT NULL
)
;
COMMENT ON COLUMN "public"."spr_document_type"."type_name" IS 'Наименование типа';
COMMENT ON COLUMN "public"."spr_document_type"."id" IS 'Первичный ключ';
COMMENT ON TABLE "public"."spr_document_type" IS 'Вид документа';

-- ----------------------------
-- Table structure for spr_employees
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_employees";
CREATE TABLE "public"."spr_employees" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "active_" bool NOT NULL DEFAULT true,
  "is_remove" bool NOT NULL DEFAULT false,
  "employees_name_add" varchar(70) COLLATE "pg_catalog"."default",
  "date_add" timestamp(6) NOT NULL DEFAULT now(),
  "employees_name_modify" varchar(70) COLLATE "pg_catalog"."default",
  "date_modify" timestamp(6),
  "commentt_modify" varchar(255) COLLATE "pg_catalog"."default",
  "ip_address_add" varchar(20) COLLATE "pg_catalog"."default",
  "ip_address_modify" varchar(20) COLLATE "pg_catalog"."default",
  "AspNetUserId" uuid,
  "employee_name" varchar(255) COLLATE "pg_catalog"."default",
  "spr_organization_id" uuid,
  "phone_number1" varchar(20) COLLATE "pg_catalog"."default",
  "phone_number2" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(30) COLLATE "pg_catalog"."default",
  "spr_organization_structure_id" uuid NOT NULL
)
;
COMMENT ON COLUMN "public"."spr_employees"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_employees"."active_" IS 'Активность';
COMMENT ON COLUMN "public"."spr_employees"."is_remove" IS 'Признак удаления записи';
COMMENT ON COLUMN "public"."spr_employees"."employees_name_add" IS 'Кто добавил запись';
COMMENT ON COLUMN "public"."spr_employees"."date_add" IS 'Дата и время добавления записи';
COMMENT ON COLUMN "public"."spr_employees"."employees_name_modify" IS 'Кто изменил запись';
COMMENT ON COLUMN "public"."spr_employees"."date_modify" IS 'Дата и время последних изменений';
COMMENT ON COLUMN "public"."spr_employees"."commentt_modify" IS 'Комментарий при изменении';
COMMENT ON COLUMN "public"."spr_employees"."ip_address_add" IS 'ip адрес добавившего';
COMMENT ON COLUMN "public"."spr_employees"."ip_address_modify" IS 'ip адрес изменившего';
COMMENT ON COLUMN "public"."spr_employees"."AspNetUserId" IS 'ID пользователя';
COMMENT ON COLUMN "public"."spr_employees"."employee_name" IS 'ФИО';
COMMENT ON COLUMN "public"."spr_employees"."spr_organization_id" IS 'Организационная структура';
COMMENT ON COLUMN "public"."spr_employees"."phone_number1" IS 'Телефон 1';
COMMENT ON COLUMN "public"."spr_employees"."phone_number2" IS 'Телефон 2';
COMMENT ON COLUMN "public"."spr_employees"."email" IS 'Почта';
COMMENT ON COLUMN "public"."spr_employees"."spr_organization_structure_id" IS 'Организационная структура';
COMMENT ON TABLE "public"."spr_employees" IS 'Справочник пользователей';

-- ----------------------------
-- Table structure for spr_organization
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_organization";
CREATE TABLE "public"."spr_organization" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "organization_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "address" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "email" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "phone_number" varchar(20) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."spr_organization"."id" IS 'Справочник организаций';
COMMENT ON COLUMN "public"."spr_organization"."organization_name" IS 'Справочник организаций';
COMMENT ON COLUMN "public"."spr_organization"."address" IS 'Справочник организаций';
COMMENT ON COLUMN "public"."spr_organization"."email" IS 'Справочник организаций';
COMMENT ON COLUMN "public"."spr_organization"."phone_number" IS 'Справочник организаций';
COMMENT ON TABLE "public"."spr_organization" IS 'Справочник организаций';

-- ----------------------------
-- Table structure for spr_organization_structure
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_organization_structure";
CREATE TABLE "public"."spr_organization_structure" (
  "id" uuid NOT NULL DEFAULT uuid_generate_v4(),
  "parent_id" uuid NOT NULL,
  "spr_organization_unit_id" int4 NOT NULL,
  "sturcture_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "address_name" varchar(255) COLLATE "pg_catalog"."default",
  "phone_number1" varchar(20) COLLATE "pg_catalog"."default",
  "phone_number2" varchar(20) COLLATE "pg_catalog"."default",
  "email" varchar(30) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."spr_organization_structure"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_organization_structure"."parent_id" IS 'Верхняя запись';
COMMENT ON COLUMN "public"."spr_organization_structure"."spr_organization_unit_id" IS 'Организационная еденица';
COMMENT ON COLUMN "public"."spr_organization_structure"."sturcture_name" IS 'наименование';
COMMENT ON COLUMN "public"."spr_organization_structure"."address_name" IS 'адрес';
COMMENT ON COLUMN "public"."spr_organization_structure"."phone_number1" IS 'номер телефона 1';
COMMENT ON COLUMN "public"."spr_organization_structure"."phone_number2" IS 'номер телефона 2';
COMMENT ON COLUMN "public"."spr_organization_structure"."email" IS 'почта';
COMMENT ON TABLE "public"."spr_organization_structure" IS 'Организационная структура';

-- ----------------------------
-- Table structure for spr_organization_unit
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_organization_unit";
CREATE TABLE "public"."spr_organization_unit" (
  "id" int4 NOT NULL,
  "organization_unit_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."spr_organization_unit"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_organization_unit"."organization_unit_name" IS 'Наименование организационной единицы';
COMMENT ON TABLE "public"."spr_organization_unit" IS 'Организационная единица';

-- ----------------------------
-- Table structure for spr_settings
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_settings";
CREATE TABLE "public"."spr_settings" (
  "id" int4 NOT NULL,
  "param_name" varchar(70) COLLATE "pg_catalog"."default" NOT NULL,
  "param_value" varchar(255) COLLATE "pg_catalog"."default" NOT NULL,
  "commentt" varchar(255) COLLATE "pg_catalog"."default"
)
;
COMMENT ON COLUMN "public"."spr_settings"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_settings"."param_name" IS 'Наименование параметра';
COMMENT ON COLUMN "public"."spr_settings"."param_value" IS 'Значение параметра';
COMMENT ON COLUMN "public"."spr_settings"."commentt" IS 'Комментарий';
COMMENT ON TABLE "public"."spr_settings" IS 'Настройки';

-- ----------------------------
-- Table structure for spr_status
-- ----------------------------
DROP TABLE IF EXISTS "public"."spr_status";
CREATE TABLE "public"."spr_status" (
  "id" int4 NOT NULL,
  "status_name" varchar(255) COLLATE "pg_catalog"."default" NOT NULL
)
;
COMMENT ON COLUMN "public"."spr_status"."id" IS 'Первичный ключ';
COMMENT ON COLUMN "public"."spr_status"."status_name" IS 'Наименование';
COMMENT ON TABLE "public"."spr_status" IS 'Справочник статусов';

-- ----------------------------
-- Function structure for data_change_log_insert
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."data_change_log_insert"("in_table_name__" varchar, "in_field_name__" varchar, "in_ip_address" varchar, "in_old_value_" varchar, "in_new_value_" varchar, "in_employees_name_" varchar, "in_commentt_" varchar, "in_table_name_base__" varchar, "in_field_name_base__" varchar, "in_row_id" uuid);
CREATE OR REPLACE FUNCTION "public"."data_change_log_insert"("in_table_name__" varchar, "in_field_name__" varchar, "in_ip_address" varchar, "in_old_value_" varchar, "in_new_value_" varchar, "in_employees_name_" varchar, "in_commentt_" varchar, "in_table_name_base__" varchar, "in_field_name_base__" varchar, "in_row_id" uuid)
  RETURNS "pg_catalog"."void" AS $BODY$
BEGIN
  --Функция сохранения лога
  insert into data_change_log(table_name_,
                              field_name_,
                              old_value,
                              new_value,
                              employees_name,
                              commentt,
                              table_name_base_,
                              field_name_base_,
                              row_id,
                              ip_address
                             )
  values (in_table_name__,
          in_field_name__,
          in_old_value_,
          in_new_value_,
          in_employees_name_,
          in_commentt_,
          in_table_name_base__,
          in_field_name_base__,
          in_row_id,
          in_ip_address
         );
END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for document_search
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."document_search"("in_date_start" date, "in_date_stop" date, "in_spr_employees_id" uuid, "in_spr_employees_id_sign" uuid, "in_spr_employees_id_control" uuid, "in_spr_employees_id_executor" uuid, "in_spr_document_status_id" int4, "in_date_execution_start" date, "in_date_execution_stop" date, "in_date_reglament_start" date, "in_date_reglament_stop" date, "in_spr_document_form_id" uuid, "in_spr_document_type_id" int4, "in_spr_organization_structure_id" uuid, "in_status_id" int4, OUT "out_data_document_id" uuid, OUT "out_document_date" date, OUT "out_document_number" varchar, OUT "out_form_name" varchar, OUT "out_type_name" varchar, OUT "out_employee_name" varchar, OUT "out_structure_name" varchar, OUT "out_document_name" varchar, OUT "out_date_reglament" date, OUT "out_date_execution" date, OUT "out_status_name" varchar, OUT "out_status" varchar, OUT "out_day" int4, OUT "out_document_text" text);
CREATE OR REPLACE FUNCTION "public"."document_search"(IN "in_date_start" date, IN "in_date_stop" date, IN "in_spr_employees_id" uuid, IN "in_spr_employees_id_sign" uuid, IN "in_spr_employees_id_control" uuid, IN "in_spr_employees_id_executor" uuid, IN "in_spr_document_status_id" int4, IN "in_date_execution_start" date, IN "in_date_execution_stop" date, IN "in_date_reglament_start" date, IN "in_date_reglament_stop" date, IN "in_spr_document_form_id" uuid, IN "in_spr_document_type_id" int4, IN "in_spr_organization_structure_id" uuid, IN "in_status_id" int4, OUT "out_data_document_id" uuid, OUT "out_document_date" date, OUT "out_document_number" varchar, OUT "out_form_name" varchar, OUT "out_type_name" varchar, OUT "out_employee_name" varchar, OUT "out_structure_name" varchar, OUT "out_document_name" varchar, OUT "out_date_reglament" date, OUT "out_date_execution" date, OUT "out_status_name" varchar, OUT "out_status" varchar, OUT "out_day" int4, OUT "out_document_text" text)
  RETURNS SETOF "pg_catalog"."record" AS $BODY$
declare 
	rec_ record;
	sing_id uuid;
	executor_id uuid;
	control_id uuid;
	
BEGIN


for rec_ in
select
	dd.id,
	dd.document_date,
	dd.document_number,
	sdf.form_name,
	sdt.type_name,
	se.employee_name,
	sos.sturcture_name,
	sds.status_name,
	ddex.document_name,
	dd.date_reglament,
	dd.date_execution,
	ddex.document_text,
	case when dd.date_execution is null then dd.date_reglament - CURRENT_DATE
			 when dd.date_execution is not null then dd.date_reglament - dd.date_execution
  end as day_
from 
	data_document dd
	join data_document_status dds on dds.id = (select dds1.id from data_document_status dds1 where dds1.data_document_id = dd.id ORDER BY status_date desc limit 1)
	join spr_document_form sdf on sdf.id = dd.spr_document_form_id
	join spr_document_type sdt on sdt.id = dd.spr_document_type_id
	join spr_employees se on se.id = dd.spr_employees_id
	join spr_organization_structure sos on sos.id = dd.spr_organization_structure_id
	join spr_document_status sds on sds.id = dds.spr_document_status_id
	join data_document_edition ddex on ddex.id = (select ddex1.id from data_document_edition ddex1 where ddex1.data_document_id = dd.id ORDER BY ddex.edition_date desc limit 1)
where 
	((dd.document_date >= in_date_start and dd.document_date <= in_date_stop) or (in_date_start is null or in_date_stop is null))
	and ((dd.date_execution >= in_date_execution_start and dd.date_execution <= in_date_execution_stop) or (in_date_execution_start is null or in_date_execution_stop is null))
	and ((dd.date_reglament >= in_date_reglament_start and dd.date_reglament <= in_date_reglament_stop) or (in_date_reglament_start is null or in_date_reglament_stop is null))
	and (dd.spr_employees_id = in_spr_employees_id or in_spr_employees_id is null)
	and (dds.spr_document_status_id = in_spr_document_status_id or in_spr_document_status_id is null)
	and (dd.spr_document_type_id = in_spr_document_type_id or in_spr_document_type_id is null)
	and (dd.spr_document_form_id = in_spr_document_form_id or in_spr_document_form_id is null)
	and (dd.spr_organization_structure_id = in_spr_organization_structure_id or in_spr_organization_structure_id is null)
	and (in_status_id is null 
			 or (in_status_id = 0 and dd.date_reglament is not null and dd.date_execution is null)
			 or (in_status_id = 2 and dd.date_reglament is not null and dd.date_execution is null and CURRENT_DATE > dd.date_reglament)
			 or (in_status_id = 1 and dd.date_reglament is not null and dd.date_execution is not null)
			 or (in_status_id = 3 and dd.date_reglament is not null and dd.date_execution is not null and dd.date_execution > dd.date_reglament)
			 or (in_status_id = 4 and dd.date_reglament is null))
	
loop

	out_data_document_id = rec_.id;
	out_document_date = rec_.document_date;
	out_document_number = rec_.document_number;
	out_form_name = rec_.form_name;
	out_type_name = rec_.type_name;
	out_employee_name = rec_.employee_name;
	out_structure_name = rec_.sturcture_name;
	out_document_name = rec_.document_name;
	out_date_reglament = rec_.date_reglament;
	out_date_execution = rec_.date_execution;
	out_status_name = rec_.status_name;
	out_day = rec_.day_;
	out_document_text = rec_.document_text;
	
	if rec_.date_reglament is not null and rec_.date_execution is null and CURRENT_DATE > rec_.date_reglament then
		out_status = 'Просрочено';
	elseif rec_.date_reglament is not null and rec_.date_execution is not null and rec_.date_execution > rec_.date_reglament then
		out_status = 'Исполнено с просрочкой';
	elseif rec_.date_reglament is not null and rec_.date_execution is null then
		out_status = 'На исполнении';
	elseif rec_.date_reglament is not null and rec_.date_execution is not null then
		out_status = 'Исполнено';
	elseif rec_.date_reglament is null then
		out_status = 'Для ознокомления';
	end if;
	
	select id
	from data_document_signature
	where spr_employees_id = in_spr_employees_id_sign
	into sing_id;
	
	select id
	from data_document_executor
	where spr_employees_id = in_spr_employees_id_executor
	into executor_id;
	
	select id
	from data_document_control
	where spr_employees_id = in_spr_employees_id_control
	into control_id;
	
	if (in_spr_employees_id_sign is null or sing_id is not null) and (in_spr_employees_id_executor is null or executor_id is not null) and (in_spr_employees_id_control is null or control_id is not null) then
		return next;
	end if;
end loop;

END 
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for get_ftp_settings
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."get_ftp_settings"(OUT "out_ftp_server" varchar, OUT "out_ftp_user" varchar, OUT "out_ftp_folder" varchar, OUT "out_ftp_password" varchar);
CREATE OR REPLACE FUNCTION "public"."get_ftp_settings"(OUT "out_ftp_server" varchar, OUT "out_ftp_user" varchar, OUT "out_ftp_folder" varchar, OUT "out_ftp_password" varchar)
  RETURNS "pg_catalog"."record" AS $BODY$
BEGIN
  --Функция получения информации по ftp
  select s.param_value from spr_settings s
  where (s.param_name='ftp_server') 
  into out_ftp_server;
  select s.param_value from spr_settings s
  where (s.param_name='ftp_user') 
  into out_ftp_user;
  select s.param_value from spr_settings s
  where (s.param_name='ftp_folder') 
  into out_ftp_folder;
  select s.param_value from spr_settings s
  where (s.param_name='ftp_password') 
  into out_ftp_password;
  --Возврощаем данные
  return; 
 
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;

-- ----------------------------
-- Function structure for select_document_last_edition
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."select_document_last_edition"(OUT "out_data_document_id" uuid, OUT "out_document_info" varchar);
CREATE OR REPLACE FUNCTION "public"."select_document_last_edition"(OUT "out_data_document_id" uuid, OUT "out_document_info" varchar)
  RETURNS SETOF "pg_catalog"."record" AS $BODY$
declare 
	rec_ record;
	document_name_ varchar;
	edition_date_ varchar;
BEGIN
for rec_ in
select s.id, s.document_number
from data_document s
loop

	select s.document_name, s.edition_date::varchar
	from data_document_edition s
	where s.data_document_id = rec_.id
	ORDER BY s.edition_date desc limit 1
	into document_name_, edition_date_;
	
	out_data_document_id = rec_.id;
	out_document_info = document_name_||','||rec_.document_number||','||edition_date_;

 return next;
end loop;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for select_employees
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."select_employees"(OUT "out_spr_employees_id" uuid, OUT "out_employee_name" varchar, OUT "out_employee_info" varchar);
CREATE OR REPLACE FUNCTION "public"."select_employees"(OUT "out_spr_employees_id" uuid, OUT "out_employee_name" varchar, OUT "out_employee_info" varchar)
  RETURNS SETOF "pg_catalog"."record" AS $BODY$
	 declare rec_ record;
BEGIN
--Функция получения списка сотрудников
for rec_ in
select se.id, 
       se.employee_name,
       ss.id as struc_id,
			 ss.sturcture_name
from spr_employees se,spr_organization_structure ss
where (se.spr_organization_structure_id=ss.id)
       and(se.is_remove=false)
order by ss.sturcture_name,se.employee_name
loop
 out_spr_employees_id=rec_.id;
 out_employee_name=rec_.employee_name;
 out_employee_info=rec_.sturcture_name;
return next;
end loop;

END
$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100
  ROWS 1000;

-- ----------------------------
-- Function structure for trf_data_document_control_insert_notif
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trf_data_document_control_insert_notif"();
CREATE OR REPLACE FUNCTION "public"."trf_data_document_control_insert_notif"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
BEGIN
--Функция для добавления уведомления
INSERT INTO data_notification (notification_text,spr_employees_id,data_document_id) 
SELECT 'Вас назначили контролирующим документ № '||s.document_number, 
  new.spr_employees_id, 
  new.data_document_id
from data_document s
where s.id = new.data_document_id;

return new;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
COMMENT ON FUNCTION "public"."trf_data_document_control_insert_notif"() IS 'Функция для добавления уведомления';

-- ----------------------------
-- Function structure for trf_data_document_edition_sort_insert
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trf_data_document_edition_sort_insert"();
CREATE OR REPLACE FUNCTION "public"."trf_data_document_edition_sort_insert"()
  RETURNS "pg_catalog"."trigger" AS $BODY$declare max_number_sort int4;
BEGIN

select max(d.number_sort)
from data_document_edition d
where new.data_document_id=d.data_document_id
into max_number_sort;

NEW.number_sort = max_number_sort + 1;

if new.number_sort is null then new.number_sort=1; end if;

return new;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
COMMENT ON FUNCTION "public"."trf_data_document_edition_sort_insert"() IS 'Функция для добавления сортировки в редакцию документа';

-- ----------------------------
-- Function structure for trf_data_document_executor_insert_notif
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trf_data_document_executor_insert_notif"();
CREATE OR REPLACE FUNCTION "public"."trf_data_document_executor_insert_notif"()
  RETURNS "pg_catalog"."trigger" AS $BODY$
BEGIN
--Функция для добавления уведомления
INSERT INTO data_notification (notification_text,spr_employees_id,data_document_id) 
SELECT 'Вас назначили исполнителем документа № '||s.document_number, 
   new.spr_employees_id, 
	 new.data_document_id
from data_document s
where s.id = new.data_document_id;

return new;

END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
COMMENT ON FUNCTION "public"."trf_data_document_executor_insert_notif"() IS 'Функция для добавления уведомления';

-- ----------------------------
-- Function structure for trf_data_document_status_name
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."trf_data_document_status_name"();
CREATE OR REPLACE FUNCTION "public"."trf_data_document_status_name"()
  RETURNS "pg_catalog"."trigger" AS $BODY$BEGIN
--Вставка статуса документа при добавлении записи
select s.status_name
from spr_document_status s
where (s.id=new.spr_document_status_id)
into new.status_name;

return new;
END$BODY$
  LANGUAGE plpgsql VOLATILE
  COST 100;
COMMENT ON FUNCTION "public"."trf_data_document_status_name"() IS 'Вставка статуса документа при добавлении записи';

-- ----------------------------
-- Function structure for uuid_generate_v1
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v1mc
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v1mc"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v1mc"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v1mc'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v3
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v3"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v3"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v3'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v4
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v4"();
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v4"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v4'
  LANGUAGE c VOLATILE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_generate_v5
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_generate_v5"("namespace" uuid, "name" text);
CREATE OR REPLACE FUNCTION "public"."uuid_generate_v5"("namespace" uuid, "name" text)
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_generate_v5'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_nil
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_nil"();
CREATE OR REPLACE FUNCTION "public"."uuid_nil"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_nil'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_dns
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_dns"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_dns"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_dns'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_oid
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_oid"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_oid"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_oid'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_url
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_url"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_url"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_url'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Function structure for uuid_ns_x500
-- ----------------------------
DROP FUNCTION IF EXISTS "public"."uuid_ns_x500"();
CREATE OR REPLACE FUNCTION "public"."uuid_ns_x500"()
  RETURNS "pg_catalog"."uuid" AS '$libdir/uuid-ossp', 'uuid_ns_x500'
  LANGUAGE c IMMUTABLE STRICT
  COST 1;

-- ----------------------------
-- Alter sequences owned by
-- ----------------------------
ALTER SEQUENCE "public"."logs_id_seq"
OWNED BY "public"."logs"."id";
SELECT setval('"public"."logs_id_seq"', 2, false);

-- ----------------------------
-- Primary Key structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE "public"."AspNetRoleClaims" ADD CONSTRAINT "PK_AspNetRoleClaims" PRIMARY KEY ("Id");

-- ----------------------------
-- Indexes structure for table AspNetRoles
-- ----------------------------
CREATE UNIQUE INDEX "RoleNameIndex" ON "public"."AspNetRoles" USING btree (
  "NormalizedName" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table AspNetRoles
-- ----------------------------
ALTER TABLE "public"."AspNetRoles" ADD CONSTRAINT "PK_AspNetRoles" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE "public"."AspNetUserClaims" ADD CONSTRAINT "PK_AspNetUserClaims" PRIMARY KEY ("Id");

-- ----------------------------
-- Indexes structure for table AspNetUserLogins
-- ----------------------------
CREATE INDEX "IX_AspNetUserLogins_UserId" ON "public"."AspNetUserLogins" USING btree (
  "UserId" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE "public"."AspNetUserLogins" ADD CONSTRAINT "PK_AspNetUserLogins" PRIMARY KEY ("LoginProvider", "ProviderKey");

-- ----------------------------
-- Indexes structure for table AspNetUserRoles
-- ----------------------------
CREATE INDEX "IX_AspNetUserRoles_RoleId" ON "public"."AspNetUserRoles" USING btree (
  "RoleId" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE "public"."AspNetUserRoles" ADD CONSTRAINT "PK_AspNetUserRoles" PRIMARY KEY ("UserId", "RoleId");

-- ----------------------------
-- Primary Key structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE "public"."AspNetUserTokens" ADD CONSTRAINT "PK_AspNetUserTokens" PRIMARY KEY ("UserId", "LoginProvider", "Name");

-- ----------------------------
-- Indexes structure for table AspNetUsers
-- ----------------------------
CREATE INDEX "EmailIndex" ON "public"."AspNetUsers" USING btree (
  "NormalizedEmail" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);
CREATE UNIQUE INDEX "UserNameIndex" ON "public"."AspNetUsers" USING btree (
  "NormalizedUserName" COLLATE "pg_catalog"."default" "pg_catalog"."text_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table AspNetUsers
-- ----------------------------
ALTER TABLE "public"."AspNetUsers" ADD CONSTRAINT "PK_AspNetUsers" PRIMARY KEY ("Id");

-- ----------------------------
-- Primary Key structure for table __EFMigrationsHistory
-- ----------------------------
ALTER TABLE "public"."__EFMigrationsHistory" ADD CONSTRAINT "PK___EFMigrationsHistory" PRIMARY KEY ("MigrationId");

-- ----------------------------
-- Primary Key structure for table data_change_log
-- ----------------------------
ALTER TABLE "public"."data_change_log" ADD CONSTRAINT "data_change_log_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document
-- ----------------------------
CREATE UNIQUE INDEX "data_document_idx1" ON "public"."data_document" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_idx2" ON "public"."data_document" USING btree (
  "spr_document_type_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_idx4" ON "public"."data_document" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_idx5" ON "public"."data_document" USING btree (
  "spr_document_form_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_idx6" ON "public"."data_document" USING btree (
  "spr_organization_structure_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_document
-- ----------------------------
ALTER TABLE "public"."data_document" ADD CONSTRAINT "data_document_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_bookmark
-- ----------------------------
CREATE UNIQUE INDEX "data_document_bookmark_idx1" ON "public"."data_document_bookmark" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_bookmark_idx2" ON "public"."data_document_bookmark" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_bookmark_idx3" ON "public"."data_document_bookmark" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_document_bookmark
-- ----------------------------
ALTER TABLE "public"."data_document_bookmark" ADD CONSTRAINT "data_document_bookmark_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_control
-- ----------------------------
CREATE INDEX "data_document_control_idx1" ON "public"."data_document_control" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_control_idx2" ON "public"."data_document_control" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_control_idx3" ON "public"."data_document_control" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Triggers structure for table data_document_control
-- ----------------------------
CREATE TRIGGER "tr_data_document_control_insert_notif" BEFORE INSERT ON "public"."data_document_control"
FOR EACH ROW
EXECUTE PROCEDURE "public"."trf_data_document_control_insert_notif"();
COMMENT ON TRIGGER "tr_data_document_control_insert_notif" ON "public"."data_document_control" IS 'Триггер для уведомлений';

-- ----------------------------
-- Primary Key structure for table data_document_control
-- ----------------------------
ALTER TABLE "public"."data_document_control" ADD CONSTRAINT "data_document_control_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_edition
-- ----------------------------
CREATE UNIQUE INDEX "data_document_edition_idx1" ON "public"."data_document_edition" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_edition_idx2" ON "public"."data_document_edition" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Triggers structure for table data_document_edition
-- ----------------------------
CREATE TRIGGER "tr_data_document_edition_sort_insert" BEFORE INSERT ON "public"."data_document_edition"
FOR EACH ROW
EXECUTE PROCEDURE "public"."trf_data_document_edition_sort_insert"();
COMMENT ON TRIGGER "tr_data_document_edition_sort_insert" ON "public"."data_document_edition" IS 'Триггер для заполнения сотрировки в data_document_edition';

-- ----------------------------
-- Primary Key structure for table data_document_edition
-- ----------------------------
ALTER TABLE "public"."data_document_edition" ADD CONSTRAINT "data_document_edition_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_executor
-- ----------------------------
CREATE INDEX "data_document_executor_idx1" ON "public"."data_document_executor" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_executor_idx2" ON "public"."data_document_executor" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_executor_idx3" ON "public"."data_document_executor" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Triggers structure for table data_document_executor
-- ----------------------------
CREATE TRIGGER "tr_data_document_executor_insert_notif" BEFORE INSERT ON "public"."data_document_executor"
FOR EACH ROW
EXECUTE PROCEDURE "public"."trf_data_document_executor_insert_notif"();
COMMENT ON TRIGGER "tr_data_document_executor_insert_notif" ON "public"."data_document_executor" IS 'Триггер для уведомлений';

-- ----------------------------
-- Primary Key structure for table data_document_executor
-- ----------------------------
ALTER TABLE "public"."data_document_executor" ADD CONSTRAINT "data_document_executor_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_file
-- ----------------------------
CREATE UNIQUE INDEX "data_document_file_idx1" ON "public"."data_document_file" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_file_idx2" ON "public"."data_document_file" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_document_file
-- ----------------------------
ALTER TABLE "public"."data_document_file" ADD CONSTRAINT "data_document_file_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_manipulation
-- ----------------------------
CREATE UNIQUE INDEX "data_document_manipulation_idx1" ON "public"."data_document_manipulation" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_manipulation_idx2" ON "public"."data_document_manipulation" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_manipulation_idx3" ON "public"."data_document_manipulation" USING btree (
  "data_document_id_parent" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_document_manipulation
-- ----------------------------
ALTER TABLE "public"."data_document_manipulation" ADD CONSTRAINT "data_document_manipulation_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_signature
-- ----------------------------
CREATE UNIQUE INDEX "data_document_sign_idx1" ON "public"."data_document_signature" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_sign_idx2" ON "public"."data_document_signature" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_sign_idx3" ON "public"."data_document_signature" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_document_signature
-- ----------------------------
ALTER TABLE "public"."data_document_signature" ADD CONSTRAINT "data_document_sign_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_document_status
-- ----------------------------
CREATE UNIQUE INDEX "data_document_status_idx1" ON "public"."data_document_status" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_document_status_idx2" ON "public"."data_document_status" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Triggers structure for table data_document_status
-- ----------------------------
CREATE TRIGGER "tr_data_docment_status_name" BEFORE INSERT ON "public"."data_document_status"
FOR EACH ROW
EXECUTE PROCEDURE "public"."trf_data_document_status_name"();
COMMENT ON TRIGGER "tr_data_docment_status_name" ON "public"."data_document_status" IS 'Триггер для вставки наименования статуса при добавлении записи';

-- ----------------------------
-- Primary Key structure for table data_document_status
-- ----------------------------
ALTER TABLE "public"."data_document_status" ADD CONSTRAINT "data_document_status_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table data_notification
-- ----------------------------
CREATE UNIQUE INDEX "data_notification_idx1" ON "public"."data_notification" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_notification_idx2" ON "public"."data_notification" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "data_notification_idx3" ON "public"."data_notification" USING btree (
  "data_document_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table data_notification
-- ----------------------------
ALTER TABLE "public"."data_notification" ADD CONSTRAINT "data_notification_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table error_massages
-- ----------------------------
CREATE UNIQUE INDEX "error_messages_idx1" ON "public"."error_massages" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "error_messages_idx2" ON "public"."error_massages" USING btree (
  "spr_employees_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table error_massages
-- ----------------------------
ALTER TABLE "public"."error_massages" ADD CONSTRAINT "error_massages_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Primary Key structure for table logs
-- ----------------------------
ALTER TABLE "public"."logs" ADD CONSTRAINT "logs_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_document_form
-- ----------------------------
CREATE UNIQUE INDEX "spr_document_form_idx1" ON "public"."spr_document_form" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_document_form
-- ----------------------------
ALTER TABLE "public"."spr_document_form" ADD CONSTRAINT "spr_document_form_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_document_status
-- ----------------------------
CREATE UNIQUE INDEX "spr_document_status_idx1" ON "public"."spr_document_status" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_document_status
-- ----------------------------
ALTER TABLE "public"."spr_document_status" ADD CONSTRAINT "spr_document_status_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_document_type
-- ----------------------------
CREATE UNIQUE INDEX "spr_document_yype_idx1" ON "public"."spr_document_type" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_document_type
-- ----------------------------
ALTER TABLE "public"."spr_document_type" ADD CONSTRAINT "spr_document_type_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_employees
-- ----------------------------
CREATE UNIQUE INDEX "spr_employees_idx1" ON "public"."spr_employees" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "spr_employees_idx2" ON "public"."spr_employees" USING btree (
  "spr_organization_structure_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_employees
-- ----------------------------
ALTER TABLE "public"."spr_employees" ADD CONSTRAINT "spr_users_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_organization
-- ----------------------------
CREATE INDEX "spr_organization_idx1" ON "public"."spr_organization" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_organization
-- ----------------------------
ALTER TABLE "public"."spr_organization" ADD CONSTRAINT "spr_organization_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_organization_structure
-- ----------------------------
CREATE UNIQUE INDEX "spr_organization_structure_idx1" ON "public"."spr_organization_structure" USING btree (
  "id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);
CREATE INDEX "spr_organization_structure_idx2" ON "public"."spr_organization_structure" USING btree (
  "spr_organization_unit_id" "pg_catalog"."int4_ops" ASC NULLS LAST
);
CREATE INDEX "spr_organization_structure_idx3" ON "public"."spr_organization_structure" USING btree (
  "parent_id" "pg_catalog"."uuid_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_organization_structure
-- ----------------------------
ALTER TABLE "public"."spr_organization_structure" ADD CONSTRAINT "spr_organization_structure_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_organization_unit
-- ----------------------------
CREATE UNIQUE INDEX "spr_organization_unit_id_idx" ON "public"."spr_organization_unit" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_organization_unit
-- ----------------------------
ALTER TABLE "public"."spr_organization_unit" ADD CONSTRAINT "Untitled_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_settings
-- ----------------------------
CREATE UNIQUE INDEX "spr_settings_idx1" ON "public"."spr_settings" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_settings
-- ----------------------------
ALTER TABLE "public"."spr_settings" ADD CONSTRAINT "spr_settings_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Indexes structure for table spr_status
-- ----------------------------
CREATE INDEX "spr_status_idx1" ON "public"."spr_status" USING btree (
  "id" "pg_catalog"."int4_ops" ASC NULLS LAST
);

-- ----------------------------
-- Primary Key structure for table spr_status
-- ----------------------------
ALTER TABLE "public"."spr_status" ADD CONSTRAINT "spr_status_pkey" PRIMARY KEY ("id");

-- ----------------------------
-- Foreign Keys structure for table AspNetRoleClaims
-- ----------------------------
ALTER TABLE "public"."AspNetRoleClaims" ADD CONSTRAINT "FK_AspNetRoleClaims_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "public"."AspNetRoles" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table AspNetUserClaims
-- ----------------------------
ALTER TABLE "public"."AspNetUserClaims" ADD CONSTRAINT "FK_AspNetUserClaims_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table AspNetUserLogins
-- ----------------------------
ALTER TABLE "public"."AspNetUserLogins" ADD CONSTRAINT "FK_AspNetUserLogins_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table AspNetUserRoles
-- ----------------------------
ALTER TABLE "public"."AspNetUserRoles" ADD CONSTRAINT "FK_AspNetUserRoles_AspNetRoles_RoleId" FOREIGN KEY ("RoleId") REFERENCES "public"."AspNetRoles" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."AspNetUserRoles" ADD CONSTRAINT "FK_AspNetUserRoles_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table AspNetUserTokens
-- ----------------------------
ALTER TABLE "public"."AspNetUserTokens" ADD CONSTRAINT "FK_AspNetUserTokens_AspNetUsers_UserId" FOREIGN KEY ("UserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document
-- ----------------------------
ALTER TABLE "public"."data_document" ADD CONSTRAINT "data_docement_fk3" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document" ADD CONSTRAINT "data_document_spr_document_form_id_fkey" FOREIGN KEY ("spr_document_form_id") REFERENCES "public"."spr_document_form" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document" ADD CONSTRAINT "data_document_spr_document_type_id_fkey" FOREIGN KEY ("spr_document_type_id") REFERENCES "public"."spr_document_type" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document" ADD CONSTRAINT "data_document_spr_organization_structure_id_fkey" FOREIGN KEY ("spr_organization_structure_id") REFERENCES "public"."spr_organization_structure" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_bookmark
-- ----------------------------
ALTER TABLE "public"."data_document_bookmark" ADD CONSTRAINT "data_document_bookmark_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document_bookmark" ADD CONSTRAINT "data_document_bookmark_spr_employees_id_fkey" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_control
-- ----------------------------
ALTER TABLE "public"."data_document_control" ADD CONSTRAINT "data_document_control_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document_control" ADD CONSTRAINT "data_document_control_spr_employees_id_fkey" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_edition
-- ----------------------------
ALTER TABLE "public"."data_document_edition" ADD CONSTRAINT "data_document_edition_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_executor
-- ----------------------------
ALTER TABLE "public"."data_document_executor" ADD CONSTRAINT "data_document_executor_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document_executor" ADD CONSTRAINT "data_document_executor_spr_employees_id_fkey" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_file
-- ----------------------------
ALTER TABLE "public"."data_document_file" ADD CONSTRAINT "data_document_file_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_manipulation
-- ----------------------------
ALTER TABLE "public"."data_document_manipulation" ADD CONSTRAINT "data_document_manipulation_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document_manipulation" ADD CONSTRAINT "data_document_manipulation_data_document_id_parent_fkey" FOREIGN KEY ("data_document_id_parent") REFERENCES "public"."data_document" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_signature
-- ----------------------------
ALTER TABLE "public"."data_document_signature" ADD CONSTRAINT "data_document_sign_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document_signature" ADD CONSTRAINT "data_document_sign_spr_employees_id_fkey" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_document_status
-- ----------------------------
ALTER TABLE "public"."data_document_status" ADD CONSTRAINT "data_document_status_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."data_document_status" ADD CONSTRAINT "data_document_status_spr_document_status_id_fkey" FOREIGN KEY ("spr_document_status_id") REFERENCES "public"."spr_document_status" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table data_notification
-- ----------------------------
ALTER TABLE "public"."data_notification" ADD CONSTRAINT "data_notification_data_document_id_fkey" FOREIGN KEY ("data_document_id") REFERENCES "public"."data_document" ("id") ON DELETE CASCADE ON UPDATE NO ACTION;
ALTER TABLE "public"."data_notification" ADD CONSTRAINT "data_notification_spr_employees_id_fkey" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table error_massages
-- ----------------------------
ALTER TABLE "public"."error_massages" ADD CONSTRAINT "error_messages_spr_employees_id_fkey" FOREIGN KEY ("spr_employees_id") REFERENCES "public"."spr_employees" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table spr_employees
-- ----------------------------
ALTER TABLE "public"."spr_employees" ADD CONSTRAINT "spr_employees_AspNetUserId_fkey" FOREIGN KEY ("AspNetUserId") REFERENCES "public"."AspNetUsers" ("Id") ON DELETE NO ACTION ON UPDATE NO ACTION;
ALTER TABLE "public"."spr_employees" ADD CONSTRAINT "spr_employees_spr_organization_structure_id_fkey" FOREIGN KEY ("spr_organization_structure_id") REFERENCES "public"."spr_organization_structure" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;

-- ----------------------------
-- Foreign Keys structure for table spr_organization_structure
-- ----------------------------
ALTER TABLE "public"."spr_organization_structure" ADD CONSTRAINT "spr_organization_structure_spr_organization_unit_id_fkey" FOREIGN KEY ("spr_organization_unit_id") REFERENCES "public"."spr_organization_unit" ("id") ON DELETE NO ACTION ON UPDATE NO ACTION;
