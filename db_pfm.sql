PGDMP                         x            db_pfm    12.1    12.1 �    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            �           1262    16394    db_pfm    DATABASE     �   CREATE DATABASE db_pfm WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'Indonesian_Indonesia.1252' LC_CTYPE = 'Indonesian_Indonesia.1252';
    DROP DATABASE db_pfm;
                postgres    false            �            1259    16697    app_pfm_article    TABLE     �   CREATE TABLE public.app_pfm_article (
    id integer NOT NULL,
    title character varying(100),
    body text,
    created_at timestamp without time zone,
    is_publish boolean
);
 #   DROP TABLE public.app_pfm_article;
       public         heap    postgres    false            �            1259    16636    app_pfm_subscribers    TABLE     �   CREATE TABLE public.app_pfm_subscribers (
    id integer NOT NULL,
    email character varying(100),
    name character varying(100),
    phone character varying(50)
);
 '   DROP TABLE public.app_pfm_subscribers;
       public         heap    postgres    false            �            1259    16634    app_pfm_subscribers_id_seq    SEQUENCE     �   CREATE SEQUENCE public.app_pfm_subscribers_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.app_pfm_subscribers_id_seq;
       public          postgres    false    229            �           0    0    app_pfm_subscribers_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.app_pfm_subscribers_id_seq OWNED BY public.app_pfm_subscribers.id;
          public          postgres    false    228            �            1259    16395    article    TABLE     �   CREATE TABLE public.article (
    id integer NOT NULL,
    title character varying(100),
    body text,
    created_at timestamp without time zone,
    is_publish integer
);
    DROP TABLE public.article;
       public         heap    postgres    false            �            1259    16516 
   auth_group    TABLE     e   CREATE TABLE public.auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         heap    postgres    false            �            1259    16514    auth_group_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public          postgres    false    217            �           0    0    auth_group_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE public.auth_group_id_seq OWNED BY public.auth_group.id;
          public          postgres    false    216            �            1259    16526    auth_group_permissions    TABLE     �   CREATE TABLE public.auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         heap    postgres    false            �            1259    16524    auth_group_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_group_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public          postgres    false    219            �           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE public.auth_group_permissions_id_seq OWNED BY public.auth_group_permissions.id;
          public          postgres    false    218            �            1259    16508    auth_permission    TABLE     �   CREATE TABLE public.auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         heap    postgres    false            �            1259    16506    auth_permission_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_permission_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public          postgres    false    215            �           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.auth_permission_id_seq OWNED BY public.auth_permission.id;
          public          postgres    false    214            �            1259    16534 	   auth_user    TABLE     �  CREATE TABLE public.auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(150) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         heap    postgres    false            �            1259    16544    auth_user_groups    TABLE        CREATE TABLE public.auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         heap    postgres    false            �            1259    16542    auth_user_groups_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_groups_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public          postgres    false    223            �           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.auth_user_groups_id_seq OWNED BY public.auth_user_groups.id;
          public          postgres    false    222            �            1259    16532    auth_user_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public          postgres    false    221            �           0    0    auth_user_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.auth_user_id_seq OWNED BY public.auth_user.id;
          public          postgres    false    220            �            1259    16552    auth_user_user_permissions    TABLE     �   CREATE TABLE public.auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         heap    postgres    false            �            1259    16550 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE public.auth_user_user_permissions_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public          postgres    false    225            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public.auth_user_user_permissions_id_seq OWNED BY public.auth_user_user_permissions.id;
          public          postgres    false    224            �            1259    16403    billing_kalender    TABLE     !  CREATE TABLE public.billing_kalender (
    id integer NOT NULL,
    name character varying(100),
    keterangan text,
    jumlah double precision,
    start_date timestamp without time zone,
    end_date timestamp without time zone,
    every character varying(10),
    is_repeat integer,
    is_autodebet integer,
    jenis_transaksi character varying(255),
    detail_transaksi text,
    day_interval integer,
    date_interval integer,
    profiluuid character varying(100) DEFAULT ''::character varying NOT NULL,
    jenis_biling integer
);
 $   DROP TABLE public.billing_kalender;
       public         heap    postgres    false            �            1259    16412    cron    TABLE     h   CREATE TABLE public.cron (
    id integer,
    runtime integer,
    text text,
    article_json text
);
    DROP TABLE public.cron;
       public         heap    postgres    false            �            1259    16612    django_admin_log    TABLE     �  CREATE TABLE public.django_admin_log (
    id integer NOT NULL,
    action_time timestamp with time zone NOT NULL,
    object_id text,
    object_repr character varying(200) NOT NULL,
    action_flag smallint NOT NULL,
    change_message text NOT NULL,
    content_type_id integer,
    user_id integer NOT NULL,
    CONSTRAINT django_admin_log_action_flag_check CHECK ((action_flag >= 0))
);
 $   DROP TABLE public.django_admin_log;
       public         heap    postgres    false            �            1259    16610    django_admin_log_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_admin_log_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public          postgres    false    227            �           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE public.django_admin_log_id_seq OWNED BY public.django_admin_log.id;
          public          postgres    false    226            �            1259    16498    django_content_type    TABLE     �   CREATE TABLE public.django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         heap    postgres    false            �            1259    16496    django_content_type_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_content_type_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public          postgres    false    213            �           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public.django_content_type_id_seq OWNED BY public.django_content_type.id;
          public          postgres    false    212            �            1259    16487    django_migrations    TABLE     �   CREATE TABLE public.django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         heap    postgres    false            �            1259    16485    django_migrations_id_seq    SEQUENCE     �   CREATE SEQUENCE public.django_migrations_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public          postgres    false    211            �           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     U   ALTER SEQUENCE public.django_migrations_id_seq OWNED BY public.django_migrations.id;
          public          postgres    false    210            �            1259    16648    django_session    TABLE     �   CREATE TABLE public.django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         heap    postgres    false            �            1259    16418    history_transaksi    TABLE     <  CREATE TABLE public.history_transaksi (
    id integer NOT NULL,
    nama character varying(100),
    remark text,
    kategori_id integer NOT NULL,
    jenis_transaksi character varying(255),
    code_transaksi character varying(255),
    profiluuid character varying(100) DEFAULT ''::character varying NOT NULL
);
 %   DROP TABLE public.history_transaksi;
       public         heap    postgres    false            �            1259    16427    kategori    TABLE     �   CREATE TABLE public.kategori (
    id integer NOT NULL,
    nama character varying(100),
    parent_id integer,
    profiluuid character varying(100) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.kategori;
       public         heap    postgres    false            �            1259    16433    kategori_temp    TABLE     }   CREATE TABLE public.kategori_temp (
    id integer NOT NULL,
    nama character varying(100),
    parent_kategori integer
);
 !   DROP TABLE public.kategori_temp;
       public         heap    postgres    false            �            1259    16438    lifegoal    TABLE     �  CREATE TABLE public.lifegoal (
    id integer NOT NULL,
    nama character varying(40),
    keterangan text,
    nomor_rekening character varying(40),
    is_autodebet integer,
    debet_from integer,
    jumlah_terkumpul double precision,
    jumlah_target double precision,
    userid character varying(255) DEFAULT ''::character varying NOT NULL,
    profiluuid character varying(100) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.lifegoal;
       public         heap    postgres    false            �            1259    16448    profil    TABLE       CREATE TABLE public.profil (
    uuid character varying(100) DEFAULT ''::character varying NOT NULL,
    nama character varying(100),
    phone character varying(100),
    ktp character varying(255),
    userid character varying(255) DEFAULT ''::character varying NOT NULL
);
    DROP TABLE public.profil;
       public         heap    postgres    false            �
           2604    16639    app_pfm_subscribers id    DEFAULT     �   ALTER TABLE ONLY public.app_pfm_subscribers ALTER COLUMN id SET DEFAULT nextval('public.app_pfm_subscribers_id_seq'::regclass);
 E   ALTER TABLE public.app_pfm_subscribers ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    228    229    229            �
           2604    16519    auth_group id    DEFAULT     n   ALTER TABLE ONLY public.auth_group ALTER COLUMN id SET DEFAULT nextval('public.auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    216    217    217            �
           2604    16529    auth_group_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    219    218    219            �
           2604    16511    auth_permission id    DEFAULT     x   ALTER TABLE ONLY public.auth_permission ALTER COLUMN id SET DEFAULT nextval('public.auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    215    214    215            �
           2604    16537    auth_user id    DEFAULT     l   ALTER TABLE ONLY public.auth_user ALTER COLUMN id SET DEFAULT nextval('public.auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    220    221    221            �
           2604    16547    auth_user_groups id    DEFAULT     z   ALTER TABLE ONLY public.auth_user_groups ALTER COLUMN id SET DEFAULT nextval('public.auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    223    222    223            �
           2604    16555    auth_user_user_permissions id    DEFAULT     �   ALTER TABLE ONLY public.auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('public.auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    225    225            �
           2604    16615    django_admin_log id    DEFAULT     z   ALTER TABLE ONLY public.django_admin_log ALTER COLUMN id SET DEFAULT nextval('public.django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    226    227    227            �
           2604    16501    django_content_type id    DEFAULT     �   ALTER TABLE ONLY public.django_content_type ALTER COLUMN id SET DEFAULT nextval('public.django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    213    212    213            �
           2604    16490    django_migrations id    DEFAULT     |   ALTER TABLE ONLY public.django_migrations ALTER COLUMN id SET DEFAULT nextval('public.django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    211    210    211            �          0    16697    app_pfm_article 
   TABLE DATA           R   COPY public.app_pfm_article (id, title, body, created_at, is_publish) FROM stdin;
    public          postgres    false    231   �       �          0    16636    app_pfm_subscribers 
   TABLE DATA           E   COPY public.app_pfm_subscribers (id, email, name, phone) FROM stdin;
    public          postgres    false    229   ��       �          0    16395    article 
   TABLE DATA           J   COPY public.article (id, title, body, created_at, is_publish) FROM stdin;
    public          postgres    false    202   >�       �          0    16516 
   auth_group 
   TABLE DATA           .   COPY public.auth_group (id, name) FROM stdin;
    public          postgres    false    217   [�       �          0    16526    auth_group_permissions 
   TABLE DATA           M   COPY public.auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public          postgres    false    219   x�       �          0    16508    auth_permission 
   TABLE DATA           N   COPY public.auth_permission (id, name, content_type_id, codename) FROM stdin;
    public          postgres    false    215   ��       �          0    16534 	   auth_user 
   TABLE DATA           �   COPY public.auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public          postgres    false    221   �       �          0    16544    auth_user_groups 
   TABLE DATA           A   COPY public.auth_user_groups (id, user_id, group_id) FROM stdin;
    public          postgres    false    223   6�       �          0    16552    auth_user_user_permissions 
   TABLE DATA           P   COPY public.auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public          postgres    false    225   S�       �          0    16403    billing_kalender 
   TABLE DATA           �   COPY public.billing_kalender (id, name, keterangan, jumlah, start_date, end_date, every, is_repeat, is_autodebet, jenis_transaksi, detail_transaksi, day_interval, date_interval, profiluuid, jenis_biling) FROM stdin;
    public          postgres    false    203   p�       �          0    16412    cron 
   TABLE DATA           ?   COPY public.cron (id, runtime, text, article_json) FROM stdin;
    public          postgres    false    204   ��       �          0    16612    django_admin_log 
   TABLE DATA           �   COPY public.django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public          postgres    false    227   ��       �          0    16498    django_content_type 
   TABLE DATA           C   COPY public.django_content_type (id, app_label, model) FROM stdin;
    public          postgres    false    213   Ǵ       �          0    16487    django_migrations 
   TABLE DATA           C   COPY public.django_migrations (id, app, name, applied) FROM stdin;
    public          postgres    false    211   K�       �          0    16648    django_session 
   TABLE DATA           P   COPY public.django_session (session_key, session_data, expire_date) FROM stdin;
    public          postgres    false    230   J�       �          0    16418    history_transaksi 
   TABLE DATA           w   COPY public.history_transaksi (id, nama, remark, kategori_id, jenis_transaksi, code_transaksi, profiluuid) FROM stdin;
    public          postgres    false    205   g�       �          0    16427    kategori 
   TABLE DATA           C   COPY public.kategori (id, nama, parent_id, profiluuid) FROM stdin;
    public          postgres    false    206   ��       �          0    16433    kategori_temp 
   TABLE DATA           B   COPY public.kategori_temp (id, nama, parent_kategori) FROM stdin;
    public          postgres    false    207   ��       �          0    16438    lifegoal 
   TABLE DATA           �   COPY public.lifegoal (id, nama, keterangan, nomor_rekening, is_autodebet, debet_from, jumlah_terkumpul, jumlah_target, userid, profiluuid) FROM stdin;
    public          postgres    false    208   ��       �          0    16448    profil 
   TABLE DATA           @   COPY public.profil (uuid, nama, phone, ktp, userid) FROM stdin;
    public          postgres    false    209   ۷       �           0    0    app_pfm_subscribers_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.app_pfm_subscribers_id_seq', 4, true);
          public          postgres    false    228            �           0    0    auth_group_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('public.auth_group_id_seq', 1, false);
          public          postgres    false    216            �           0    0    auth_group_permissions_id_seq    SEQUENCE SET     L   SELECT pg_catalog.setval('public.auth_group_permissions_id_seq', 1, false);
          public          postgres    false    218            �           0    0    auth_permission_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.auth_permission_id_seq', 36, true);
          public          postgres    false    214            �           0    0    auth_user_groups_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.auth_user_groups_id_seq', 1, false);
          public          postgres    false    222            �           0    0    auth_user_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.auth_user_id_seq', 1, false);
          public          postgres    false    220            �           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public.auth_user_user_permissions_id_seq', 1, false);
          public          postgres    false    224            �           0    0    django_admin_log_id_seq    SEQUENCE SET     F   SELECT pg_catalog.setval('public.django_admin_log_id_seq', 1, false);
          public          postgres    false    226            �           0    0    django_content_type_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('public.django_content_type_id_seq', 9, true);
          public          postgres    false    212            �           0    0    django_migrations_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('public.django_migrations_id_seq', 24, true);
          public          postgres    false    210            ;           2606    16704 $   app_pfm_article app_pfm_article_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.app_pfm_article
    ADD CONSTRAINT app_pfm_article_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.app_pfm_article DROP CONSTRAINT app_pfm_article_pkey;
       public            postgres    false    231            5           2606    16641 ,   app_pfm_subscribers app_pfm_subscribers_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.app_pfm_subscribers
    ADD CONSTRAINT app_pfm_subscribers_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.app_pfm_subscribers DROP CONSTRAINT app_pfm_subscribers_pkey;
       public            postgres    false    229                       2606    16523    auth_group auth_group_name_key 
   CONSTRAINT     Y   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public            postgres    false    217                       2606    16578 R   auth_group_permissions auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public            postgres    false    219    219                       2606    16531 2   auth_group_permissions auth_group_permissions_pkey 
   CONSTRAINT     p   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public            postgres    false    219                       2606    16521    auth_group auth_group_pkey 
   CONSTRAINT     X   ALTER TABLE ONLY public.auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public            postgres    false    217                       2606    16564 F   auth_permission auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public            postgres    false    215    215                       2606    16513 $   auth_permission auth_permission_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public            postgres    false    215            &           2606    16549 &   auth_user_groups auth_user_groups_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public            postgres    false    223            )           2606    16593 @   auth_user_groups auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public            postgres    false    223    223                        2606    16539    auth_user auth_user_pkey 
   CONSTRAINT     V   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public            postgres    false    221            ,           2606    16557 :   auth_user_user_permissions auth_user_user_permissions_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public            postgres    false    225            /           2606    16607 Y   auth_user_user_permissions auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public            postgres    false    225    225            #           2606    16643     auth_user auth_user_username_key 
   CONSTRAINT     _   ALTER TABLE ONLY public.auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public            postgres    false    221            2           2606    16621 &   django_admin_log django_admin_log_pkey 
   CONSTRAINT     d   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public            postgres    false    227                       2606    16505 E   django_content_type django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public            postgres    false    213    213                       2606    16503 ,   django_content_type django_content_type_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public            postgres    false    213            
           2606    16495 (   django_migrations django_migrations_pkey 
   CONSTRAINT     f   ALTER TABLE ONLY public.django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public            postgres    false    211            8           2606    16655 "   django_session django_session_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY public.django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public            postgres    false    230            �
           2606    16402    article primary 
   CONSTRAINT     O   ALTER TABLE ONLY public.article
    ADD CONSTRAINT "primary" PRIMARY KEY (id);
 ;   ALTER TABLE ONLY public.article DROP CONSTRAINT "primary";
       public            postgres    false    202            �
           2606    16411    billing_kalender primary00000 
   CONSTRAINT     [   ALTER TABLE ONLY public.billing_kalender
    ADD CONSTRAINT primary00000 PRIMARY KEY (id);
 G   ALTER TABLE ONLY public.billing_kalender DROP CONSTRAINT primary00000;
       public            postgres    false    203            �
           2606    16426    history_transaksi primary00001 
   CONSTRAINT     \   ALTER TABLE ONLY public.history_transaksi
    ADD CONSTRAINT primary00001 PRIMARY KEY (id);
 H   ALTER TABLE ONLY public.history_transaksi DROP CONSTRAINT primary00001;
       public            postgres    false    205                       2606    16432    kategori primary00002 
   CONSTRAINT     S   ALTER TABLE ONLY public.kategori
    ADD CONSTRAINT primary00002 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.kategori DROP CONSTRAINT primary00002;
       public            postgres    false    206                       2606    16437    kategori_temp primary00003 
   CONSTRAINT     X   ALTER TABLE ONLY public.kategori_temp
    ADD CONSTRAINT primary00003 PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.kategori_temp DROP CONSTRAINT primary00003;
       public            postgres    false    207                       2606    16447    lifegoal primary00004 
   CONSTRAINT     S   ALTER TABLE ONLY public.lifegoal
    ADD CONSTRAINT primary00004 PRIMARY KEY (id);
 ?   ALTER TABLE ONLY public.lifegoal DROP CONSTRAINT primary00004;
       public            postgres    false    208                       2606    16457    profil primary00005 
   CONSTRAINT     S   ALTER TABLE ONLY public.profil
    ADD CONSTRAINT primary00005 PRIMARY KEY (uuid);
 =   ALTER TABLE ONLY public.profil DROP CONSTRAINT primary00005;
       public            postgres    false    209                       1259    16566    auth_group_name_a6ea08ec_like    INDEX     h   CREATE INDEX auth_group_name_a6ea08ec_like ON public.auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public            postgres    false    217                       1259    16579 (   auth_group_permissions_group_id_b120cbf9    INDEX     o   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON public.auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public            postgres    false    219                       1259    16580 -   auth_group_permissions_permission_id_84c5c92e    INDEX     y   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON public.auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public            postgres    false    219                       1259    16565 (   auth_permission_content_type_id_2f476e4b    INDEX     o   CREATE INDEX auth_permission_content_type_id_2f476e4b ON public.auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public            postgres    false    215            $           1259    16595 "   auth_user_groups_group_id_97559544    INDEX     c   CREATE INDEX auth_user_groups_group_id_97559544 ON public.auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public            postgres    false    223            '           1259    16594 !   auth_user_groups_user_id_6a12ed8b    INDEX     a   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON public.auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public            postgres    false    223            *           1259    16609 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     �   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON public.auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public            postgres    false    225            -           1259    16608 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     u   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON public.auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public            postgres    false    225            !           1259    16644     auth_user_username_6821ab7c_like    INDEX     n   CREATE INDEX auth_user_username_6821ab7c_like ON public.auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public            postgres    false    221            0           1259    16632 )   django_admin_log_content_type_id_c4bce8eb    INDEX     q   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON public.django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public            postgres    false    227            3           1259    16633 !   django_admin_log_user_id_c564eba6    INDEX     a   CREATE INDEX django_admin_log_user_id_c564eba6 ON public.django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public            postgres    false    227            6           1259    16657 #   django_session_expire_date_a5c62663    INDEX     e   CREATE INDEX django_session_expire_date_a5c62663 ON public.django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public            postgres    false    230            9           1259    16656 (   django_session_session_key_c0390e0f_like    INDEX     ~   CREATE INDEX django_session_session_key_c0390e0f_like ON public.django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public            postgres    false    230                       1259    16458    userid00000    INDEX     G   CREATE UNIQUE INDEX userid00000 ON public.profil USING btree (userid);
    DROP INDEX public.userid00000;
       public            postgres    false    209            >           2606    16572 O   auth_group_permissions auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public          postgres    false    215    219    2835            =           2606    16567 P   auth_group_permissions auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public          postgres    false    219    217    2840            <           2606    16558 E   auth_permission auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public          postgres    false    215    2830    213            @           2606    16587 D   auth_user_groups auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES public.auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public          postgres    false    217    223    2840            ?           2606    16582 B   auth_user_groups auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public          postgres    false    223    2848    221            B           2606    16601 S   auth_user_user_permissions auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES public.auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public          postgres    false    2835    215    225            A           2606    16596 V   auth_user_user_permissions auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public          postgres    false    2848    221    225            C           2606    16622 G   django_admin_log django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES public.django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public          postgres    false    2830    213    227            D           2606    16627 B   django_admin_log django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY public.django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES public.auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public          postgres    false    221    2848    227            �   �  x�mU�n�6<����	�fƱ���0�`8�"�/=$%ѦH������^l~n�d�������H�����{6��y��0y�3�H7f�W���i4at�z�Ҹ=<B�w��k���>���F�L���i�A���uǔ�6>�b���r��4���L?�����M6�� �@
H�L6��pɷ�g��5iw%��(.	���1��>2ic7�ϟ;��T�ް><���En�����`�v���%�j�(�!d<Btd�)x`� ��X<XgMj����[ �;��r�l�J*�>XM'H ��됾��n7�R2FV�j�F���R}��,��(Y����?	m��ߟ��;� H)5�Z� ) �$���������:�]��3���X��!�{_�<��;��Ca	&	�k��]'ߣBh��@�~��l����C��6���/hq-14�R���A�t����<�'&gt�8��_<ش�Ϊ7��%���hF��\J�v�Z� 3�eo��*]���*Cq,��G4(��ڮ��w���������\\o/��˟��Z���ި����/ oK���T��A�lD��q��ϧ������w�|5~4�����Pgıo��������ŏ�9�C��(�y~��`��s������7U�c�F6^�����c��?v ����Әf-�Ri[�G��P�I�����Q�I�+���[>g�����6���[0;����y8\�դ!�$x-,�Gc�v�(��f��J��d�H����G�¢�ľ�s�J<�a٣ƛ�U+ih��X�Q�'��F7��K&���W��<�g���T��/܀}��`M	�b��c��$���i�����l��v'Y CQ�y]�3~�� ���%%��xTZЖ����e<��6 ��N�'��N]Ͳ3e��l]^_n��fs��X�g�����|�[      �   A   x�3�L�M��q �z����~����F�@�eę�Y��$��rX��r�p��AW� x��      �      x������ � �      �      x������ � �      �      x������ � �      �   t  x�]�Qn� ���9�THۤϻF�)MQ��%�M��c��7l�?����f�ߛiy4nN᥌�꯭�R[@��a~8A��-�w7�$��"��w����Ӆ�_feA�����v����`Q��=)
w�����OՂ ��9p�2G/Dw*� bI� `����u���͑��)����oG �g�L�q�󰫛�eNۭ5��t���;��\�F!�_���~���|�AW��ZG�o��Xi+�NzVL��0ԫ�:A`UJz\oq��BT]����"�-vy�x��8����-G)�CH~����+݊����'�*�^ A`Uz��I]��u+^N���x�/ �
p���}x��Z�׎ȵ      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �   t   x�M��
1��F�_�E�n�k�ۆ$=��+..�ffK�1I��F�a3v�z�H�&q�V�_�h�+�tgÑr���bV������� gJ�w}N�}�l2�9.kM�㺖"�m ��8�      �   �  x����n�0��٧�}4��<K%��u6��O�5o_�l�*"!ߘ�1s����]t]�_��*  �w>z*
^���Ph�h��9���Z�G|?S��KDd���ݹ�P�f	_%Ԅ��
�����ә�����혁Z�be���t�^��;���\�{M�S 3+;fxkϛ�5+ȝ��O��oLg[w�Bг�j1������OS�#�Mk��{z��K+zA�'�1�õևS�Bd:S,�������TYi���!��`���Sk�p�"))�5����x�q�o�k�ʐa��"��|��o6��T2�ƱM�������4���N�s���LI�<�Js��đ`5����}�5h��Ln���7F�4�Jk)��#j�b��fIz�!�� _6  i{)c�X��w ' 
[���1@J-��pPg �Hss�Eg��♒m��[����ŝ�5�ר��3���\.�o1��      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     