PGDMP         %                u            blog    9.5.8    9.5.8 �    p	           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                       false            q	           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                       false            r	           1262    26362    blog    DATABASE     j   CREATE DATABASE blog WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'en_IN' LC_CTYPE = 'en_IN';
    DROP DATABASE blog;
             postgres    false                        2615    2200    public    SCHEMA        CREATE SCHEMA public;
    DROP SCHEMA public;
             postgres    false            s	           0    0    SCHEMA public    COMMENT     6   COMMENT ON SCHEMA public IS 'standard public schema';
                  postgres    false    6            t	           0    0    public    ACL     �   REVOKE ALL ON SCHEMA public FROM PUBLIC;
REVOKE ALL ON SCHEMA public FROM postgres;
GRANT ALL ON SCHEMA public TO postgres;
GRANT ALL ON SCHEMA public TO PUBLIC;
                  postgres    false    6                        3079    12393    plpgsql 	   EXTENSION     ?   CREATE EXTENSION IF NOT EXISTS plpgsql WITH SCHEMA pg_catalog;
    DROP EXTENSION plpgsql;
                  false            u	           0    0    EXTENSION plpgsql    COMMENT     @   COMMENT ON EXTENSION plpgsql IS 'PL/pgSQL procedural language';
                       false    1            �            1259    26490    account_emailaddress    TABLE     �   CREATE TABLE account_emailaddress (
    id integer NOT NULL,
    email character varying(254) NOT NULL,
    verified boolean NOT NULL,
    "primary" boolean NOT NULL,
    user_id integer NOT NULL
);
 (   DROP TABLE public.account_emailaddress;
       public         postgres    false    6            �            1259    26488    account_emailaddress_id_seq    SEQUENCE     }   CREATE SEQUENCE account_emailaddress_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public.account_emailaddress_id_seq;
       public       postgres    false    6    198            v	           0    0    account_emailaddress_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE account_emailaddress_id_seq OWNED BY account_emailaddress.id;
            public       postgres    false    197            �            1259    26500    account_emailconfirmation    TABLE     �   CREATE TABLE account_emailconfirmation (
    id integer NOT NULL,
    created timestamp with time zone NOT NULL,
    sent timestamp with time zone,
    key character varying(64) NOT NULL,
    email_address_id integer NOT NULL
);
 -   DROP TABLE public.account_emailconfirmation;
       public         postgres    false    6            �            1259    26498     account_emailconfirmation_id_seq    SEQUENCE     �   CREATE SEQUENCE account_emailconfirmation_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.account_emailconfirmation_id_seq;
       public       postgres    false    200    6            w	           0    0     account_emailconfirmation_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE account_emailconfirmation_id_seq OWNED BY account_emailconfirmation.id;
            public       postgres    false    199            �            1259    26394 
   auth_group    TABLE     ^   CREATE TABLE auth_group (
    id integer NOT NULL,
    name character varying(80) NOT NULL
);
    DROP TABLE public.auth_group;
       public         postgres    false    6            �            1259    26392    auth_group_id_seq    SEQUENCE     s   CREATE SEQUENCE auth_group_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 (   DROP SEQUENCE public.auth_group_id_seq;
       public       postgres    false    188    6            x	           0    0    auth_group_id_seq    SEQUENCE OWNED BY     9   ALTER SEQUENCE auth_group_id_seq OWNED BY auth_group.id;
            public       postgres    false    187            �            1259    26404    auth_group_permissions    TABLE     �   CREATE TABLE auth_group_permissions (
    id integer NOT NULL,
    group_id integer NOT NULL,
    permission_id integer NOT NULL
);
 *   DROP TABLE public.auth_group_permissions;
       public         postgres    false    6            �            1259    26402    auth_group_permissions_id_seq    SEQUENCE        CREATE SEQUENCE auth_group_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 4   DROP SEQUENCE public.auth_group_permissions_id_seq;
       public       postgres    false    6    190            y	           0    0    auth_group_permissions_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE auth_group_permissions_id_seq OWNED BY auth_group_permissions.id;
            public       postgres    false    189            �            1259    26386    auth_permission    TABLE     �   CREATE TABLE auth_permission (
    id integer NOT NULL,
    name character varying(255) NOT NULL,
    content_type_id integer NOT NULL,
    codename character varying(100) NOT NULL
);
 #   DROP TABLE public.auth_permission;
       public         postgres    false    6            �            1259    26384    auth_permission_id_seq    SEQUENCE     x   CREATE SEQUENCE auth_permission_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.auth_permission_id_seq;
       public       postgres    false    186    6            z	           0    0    auth_permission_id_seq    SEQUENCE OWNED BY     C   ALTER SEQUENCE auth_permission_id_seq OWNED BY auth_permission.id;
            public       postgres    false    185            �            1259    26412 	   auth_user    TABLE     �  CREATE TABLE auth_user (
    id integer NOT NULL,
    password character varying(128) NOT NULL,
    last_login timestamp with time zone,
    is_superuser boolean NOT NULL,
    username character varying(150) NOT NULL,
    first_name character varying(30) NOT NULL,
    last_name character varying(30) NOT NULL,
    email character varying(254) NOT NULL,
    is_staff boolean NOT NULL,
    is_active boolean NOT NULL,
    date_joined timestamp with time zone NOT NULL
);
    DROP TABLE public.auth_user;
       public         postgres    false    6            �            1259    26422    auth_user_groups    TABLE     x   CREATE TABLE auth_user_groups (
    id integer NOT NULL,
    user_id integer NOT NULL,
    group_id integer NOT NULL
);
 $   DROP TABLE public.auth_user_groups;
       public         postgres    false    6            �            1259    26420    auth_user_groups_id_seq    SEQUENCE     y   CREATE SEQUENCE auth_user_groups_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.auth_user_groups_id_seq;
       public       postgres    false    194    6            {	           0    0    auth_user_groups_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE auth_user_groups_id_seq OWNED BY auth_user_groups.id;
            public       postgres    false    193            �            1259    26410    auth_user_id_seq    SEQUENCE     r   CREATE SEQUENCE auth_user_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.auth_user_id_seq;
       public       postgres    false    6    192            |	           0    0    auth_user_id_seq    SEQUENCE OWNED BY     7   ALTER SEQUENCE auth_user_id_seq OWNED BY auth_user.id;
            public       postgres    false    191            �            1259    26430    auth_user_user_permissions    TABLE     �   CREATE TABLE auth_user_user_permissions (
    id integer NOT NULL,
    user_id integer NOT NULL,
    permission_id integer NOT NULL
);
 .   DROP TABLE public.auth_user_user_permissions;
       public         postgres    false    6            �            1259    26428 !   auth_user_user_permissions_id_seq    SEQUENCE     �   CREATE SEQUENCE auth_user_user_permissions_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public.auth_user_user_permissions_id_seq;
       public       postgres    false    196    6            }	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE auth_user_user_permissions_id_seq OWNED BY auth_user_user_permissions.id;
            public       postgres    false    195            �            1259    26558    blog_articles    TABLE       CREATE TABLE blog_articles (
    id integer NOT NULL,
    title character varying(200) NOT NULL,
    body text NOT NULL,
    created timestamp with time zone NOT NULL,
    updated timestamp with time zone,
    comment_count integer NOT NULL,
    author_id integer NOT NULL
);
 !   DROP TABLE public.blog_articles;
       public         postgres    false    6            �            1259    26556    blog_articles_id_seq    SEQUENCE     v   CREATE SEQUENCE blog_articles_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_articles_id_seq;
       public       postgres    false    204    6            ~	           0    0    blog_articles_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE blog_articles_id_seq OWNED BY blog_articles.id;
            public       postgres    false    203            �            1259    26571    blog_comments    TABLE     �   CREATE TABLE blog_comments (
    id integer NOT NULL,
    text text NOT NULL,
    created timestamp with time zone NOT NULL,
    article_id integer NOT NULL,
    users_id integer NOT NULL
);
 !   DROP TABLE public.blog_comments;
       public         postgres    false    6            �            1259    26569    blog_comments_id_seq    SEQUENCE     v   CREATE SEQUENCE blog_comments_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.blog_comments_id_seq;
       public       postgres    false    206    6            	           0    0    blog_comments_id_seq    SEQUENCE OWNED BY     ?   ALTER SEQUENCE blog_comments_id_seq OWNED BY blog_comments.id;
            public       postgres    false    205            �            1259    26527    django_admin_log    TABLE     �  CREATE TABLE django_admin_log (
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
       public         postgres    false    6            �            1259    26525    django_admin_log_id_seq    SEQUENCE     y   CREATE SEQUENCE django_admin_log_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 .   DROP SEQUENCE public.django_admin_log_id_seq;
       public       postgres    false    6    202            �	           0    0    django_admin_log_id_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE django_admin_log_id_seq OWNED BY django_admin_log.id;
            public       postgres    false    201            �            1259    26376    django_content_type    TABLE     �   CREATE TABLE django_content_type (
    id integer NOT NULL,
    app_label character varying(100) NOT NULL,
    model character varying(100) NOT NULL
);
 '   DROP TABLE public.django_content_type;
       public         postgres    false    6            �            1259    26374    django_content_type_id_seq    SEQUENCE     |   CREATE SEQUENCE django_content_type_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public.django_content_type_id_seq;
       public       postgres    false    6    184            �	           0    0    django_content_type_id_seq    SEQUENCE OWNED BY     K   ALTER SEQUENCE django_content_type_id_seq OWNED BY django_content_type.id;
            public       postgres    false    183            �            1259    26365    django_migrations    TABLE     �   CREATE TABLE django_migrations (
    id integer NOT NULL,
    app character varying(255) NOT NULL,
    name character varying(255) NOT NULL,
    applied timestamp with time zone NOT NULL
);
 %   DROP TABLE public.django_migrations;
       public         postgres    false    6            �            1259    26363    django_migrations_id_seq    SEQUENCE     z   CREATE SEQUENCE django_migrations_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 /   DROP SEQUENCE public.django_migrations_id_seq;
       public       postgres    false    182    6            �	           0    0    django_migrations_id_seq    SEQUENCE OWNED BY     G   ALTER SEQUENCE django_migrations_id_seq OWNED BY django_migrations.id;
            public       postgres    false    181            �            1259    26599    django_session    TABLE     �   CREATE TABLE django_session (
    session_key character varying(40) NOT NULL,
    session_data text NOT NULL,
    expire_date timestamp with time zone NOT NULL
);
 "   DROP TABLE public.django_session;
       public         postgres    false    6            �            1259    26611    django_site    TABLE     �   CREATE TABLE django_site (
    id integer NOT NULL,
    domain character varying(100) NOT NULL,
    name character varying(50) NOT NULL
);
    DROP TABLE public.django_site;
       public         postgres    false    6            �            1259    26609    django_site_id_seq    SEQUENCE     t   CREATE SEQUENCE django_site_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.django_site_id_seq;
       public       postgres    false    209    6            �	           0    0    django_site_id_seq    SEQUENCE OWNED BY     ;   ALTER SEQUENCE django_site_id_seq OWNED BY django_site.id;
            public       postgres    false    208            �            1259    26622    socialaccount_socialaccount    TABLE     =  CREATE TABLE socialaccount_socialaccount (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    uid character varying(191) NOT NULL,
    last_login timestamp with time zone NOT NULL,
    date_joined timestamp with time zone NOT NULL,
    extra_data text NOT NULL,
    user_id integer NOT NULL
);
 /   DROP TABLE public.socialaccount_socialaccount;
       public         postgres    false    6            �            1259    26620 "   socialaccount_socialaccount_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialaccount_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 9   DROP SEQUENCE public.socialaccount_socialaccount_id_seq;
       public       postgres    false    211    6            �	           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE socialaccount_socialaccount_id_seq OWNED BY socialaccount_socialaccount.id;
            public       postgres    false    210            �            1259    26633    socialaccount_socialapp    TABLE       CREATE TABLE socialaccount_socialapp (
    id integer NOT NULL,
    provider character varying(30) NOT NULL,
    name character varying(40) NOT NULL,
    client_id character varying(191) NOT NULL,
    secret character varying(191) NOT NULL,
    key character varying(191) NOT NULL
);
 +   DROP TABLE public.socialaccount_socialapp;
       public         postgres    false    6            �            1259    26631    socialaccount_socialapp_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialapp_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 5   DROP SEQUENCE public.socialaccount_socialapp_id_seq;
       public       postgres    false    6    213            �	           0    0    socialaccount_socialapp_id_seq    SEQUENCE OWNED BY     S   ALTER SEQUENCE socialaccount_socialapp_id_seq OWNED BY socialaccount_socialapp.id;
            public       postgres    false    212            �            1259    26641    socialaccount_socialapp_sites    TABLE     �   CREATE TABLE socialaccount_socialapp_sites (
    id integer NOT NULL,
    socialapp_id integer NOT NULL,
    site_id integer NOT NULL
);
 1   DROP TABLE public.socialaccount_socialapp_sites;
       public         postgres    false    6            �            1259    26639 $   socialaccount_socialapp_sites_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialapp_sites_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 ;   DROP SEQUENCE public.socialaccount_socialapp_sites_id_seq;
       public       postgres    false    6    215            �	           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE OWNED BY     _   ALTER SEQUENCE socialaccount_socialapp_sites_id_seq OWNED BY socialaccount_socialapp_sites.id;
            public       postgres    false    214            �            1259    26649    socialaccount_socialtoken    TABLE     �   CREATE TABLE socialaccount_socialtoken (
    id integer NOT NULL,
    token text NOT NULL,
    token_secret text NOT NULL,
    expires_at timestamp with time zone,
    account_id integer NOT NULL,
    app_id integer NOT NULL
);
 -   DROP TABLE public.socialaccount_socialtoken;
       public         postgres    false    6            �            1259    26647     socialaccount_socialtoken_id_seq    SEQUENCE     �   CREATE SEQUENCE socialaccount_socialtoken_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 7   DROP SEQUENCE public.socialaccount_socialtoken_id_seq;
       public       postgres    false    6    217            �	           0    0     socialaccount_socialtoken_id_seq    SEQUENCE OWNED BY     W   ALTER SEQUENCE socialaccount_socialtoken_id_seq OWNED BY socialaccount_socialtoken.id;
            public       postgres    false    216            \           2604    26493    id    DEFAULT     t   ALTER TABLE ONLY account_emailaddress ALTER COLUMN id SET DEFAULT nextval('account_emailaddress_id_seq'::regclass);
 F   ALTER TABLE public.account_emailaddress ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    198    197    198            ]           2604    26503    id    DEFAULT     ~   ALTER TABLE ONLY account_emailconfirmation ALTER COLUMN id SET DEFAULT nextval('account_emailconfirmation_id_seq'::regclass);
 K   ALTER TABLE public.account_emailconfirmation ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    199    200    200            W           2604    26397    id    DEFAULT     `   ALTER TABLE ONLY auth_group ALTER COLUMN id SET DEFAULT nextval('auth_group_id_seq'::regclass);
 <   ALTER TABLE public.auth_group ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    187    188    188            X           2604    26407    id    DEFAULT     x   ALTER TABLE ONLY auth_group_permissions ALTER COLUMN id SET DEFAULT nextval('auth_group_permissions_id_seq'::regclass);
 H   ALTER TABLE public.auth_group_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    190    189    190            V           2604    26389    id    DEFAULT     j   ALTER TABLE ONLY auth_permission ALTER COLUMN id SET DEFAULT nextval('auth_permission_id_seq'::regclass);
 A   ALTER TABLE public.auth_permission ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    185    186    186            Y           2604    26415    id    DEFAULT     ^   ALTER TABLE ONLY auth_user ALTER COLUMN id SET DEFAULT nextval('auth_user_id_seq'::regclass);
 ;   ALTER TABLE public.auth_user ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    192    191    192            Z           2604    26425    id    DEFAULT     l   ALTER TABLE ONLY auth_user_groups ALTER COLUMN id SET DEFAULT nextval('auth_user_groups_id_seq'::regclass);
 B   ALTER TABLE public.auth_user_groups ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    194    193    194            [           2604    26433    id    DEFAULT     �   ALTER TABLE ONLY auth_user_user_permissions ALTER COLUMN id SET DEFAULT nextval('auth_user_user_permissions_id_seq'::regclass);
 L   ALTER TABLE public.auth_user_user_permissions ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    195    196    196            `           2604    26561    id    DEFAULT     f   ALTER TABLE ONLY blog_articles ALTER COLUMN id SET DEFAULT nextval('blog_articles_id_seq'::regclass);
 ?   ALTER TABLE public.blog_articles ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    203    204    204            a           2604    26574    id    DEFAULT     f   ALTER TABLE ONLY blog_comments ALTER COLUMN id SET DEFAULT nextval('blog_comments_id_seq'::regclass);
 ?   ALTER TABLE public.blog_comments ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    205    206    206            ^           2604    26530    id    DEFAULT     l   ALTER TABLE ONLY django_admin_log ALTER COLUMN id SET DEFAULT nextval('django_admin_log_id_seq'::regclass);
 B   ALTER TABLE public.django_admin_log ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    202    201    202            U           2604    26379    id    DEFAULT     r   ALTER TABLE ONLY django_content_type ALTER COLUMN id SET DEFAULT nextval('django_content_type_id_seq'::regclass);
 E   ALTER TABLE public.django_content_type ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    184    183    184            T           2604    26368    id    DEFAULT     n   ALTER TABLE ONLY django_migrations ALTER COLUMN id SET DEFAULT nextval('django_migrations_id_seq'::regclass);
 C   ALTER TABLE public.django_migrations ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    182    181    182            b           2604    26614    id    DEFAULT     b   ALTER TABLE ONLY django_site ALTER COLUMN id SET DEFAULT nextval('django_site_id_seq'::regclass);
 =   ALTER TABLE public.django_site ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    208    209    209            c           2604    26625    id    DEFAULT     �   ALTER TABLE ONLY socialaccount_socialaccount ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialaccount_id_seq'::regclass);
 M   ALTER TABLE public.socialaccount_socialaccount ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    211    210    211            d           2604    26636    id    DEFAULT     z   ALTER TABLE ONLY socialaccount_socialapp ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialapp_id_seq'::regclass);
 I   ALTER TABLE public.socialaccount_socialapp ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    213    212    213            e           2604    26644    id    DEFAULT     �   ALTER TABLE ONLY socialaccount_socialapp_sites ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialapp_sites_id_seq'::regclass);
 O   ALTER TABLE public.socialaccount_socialapp_sites ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    214    215    215            f           2604    26652    id    DEFAULT     ~   ALTER TABLE ONLY socialaccount_socialtoken ALTER COLUMN id SET DEFAULT nextval('socialaccount_socialtoken_id_seq'::regclass);
 K   ALTER TABLE public.socialaccount_socialtoken ALTER COLUMN id DROP DEFAULT;
       public       postgres    false    217    216    217            Z	          0    26490    account_emailaddress 
   TABLE DATA               P   COPY account_emailaddress (id, email, verified, "primary", user_id) FROM stdin;
    public       postgres    false    198   7�       �	           0    0    account_emailaddress_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('account_emailaddress_id_seq', 1, false);
            public       postgres    false    197            \	          0    26500    account_emailconfirmation 
   TABLE DATA               V   COPY account_emailconfirmation (id, created, sent, key, email_address_id) FROM stdin;
    public       postgres    false    200   T�       �	           0    0     account_emailconfirmation_id_seq    SEQUENCE SET     H   SELECT pg_catalog.setval('account_emailconfirmation_id_seq', 1, false);
            public       postgres    false    199            P	          0    26394 
   auth_group 
   TABLE DATA               '   COPY auth_group (id, name) FROM stdin;
    public       postgres    false    188   q�       �	           0    0    auth_group_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('auth_group_id_seq', 1, false);
            public       postgres    false    187            R	          0    26404    auth_group_permissions 
   TABLE DATA               F   COPY auth_group_permissions (id, group_id, permission_id) FROM stdin;
    public       postgres    false    190   ��       �	           0    0    auth_group_permissions_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('auth_group_permissions_id_seq', 1, false);
            public       postgres    false    189            N	          0    26386    auth_permission 
   TABLE DATA               G   COPY auth_permission (id, name, content_type_id, codename) FROM stdin;
    public       postgres    false    186   ��       �	           0    0    auth_permission_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('auth_permission_id_seq', 42, true);
            public       postgres    false    185            T	          0    26412 	   auth_user 
   TABLE DATA               �   COPY auth_user (id, password, last_login, is_superuser, username, first_name, last_name, email, is_staff, is_active, date_joined) FROM stdin;
    public       postgres    false    192   ��       V	          0    26422    auth_user_groups 
   TABLE DATA               :   COPY auth_user_groups (id, user_id, group_id) FROM stdin;
    public       postgres    false    194   ��       �	           0    0    auth_user_groups_id_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('auth_user_groups_id_seq', 1, false);
            public       postgres    false    193            �	           0    0    auth_user_id_seq    SEQUENCE SET     7   SELECT pg_catalog.setval('auth_user_id_seq', 3, true);
            public       postgres    false    191            X	          0    26430    auth_user_user_permissions 
   TABLE DATA               I   COPY auth_user_user_permissions (id, user_id, permission_id) FROM stdin;
    public       postgres    false    196   ��       �	           0    0 !   auth_user_user_permissions_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('auth_user_user_permissions_id_seq', 1, false);
            public       postgres    false    195            `	          0    26558    blog_articles 
   TABLE DATA               ]   COPY blog_articles (id, title, body, created, updated, comment_count, author_id) FROM stdin;
    public       postgres    false    204   �       �	           0    0    blog_articles_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('blog_articles_id_seq', 8, true);
            public       postgres    false    203            b	          0    26571    blog_comments 
   TABLE DATA               I   COPY blog_comments (id, text, created, article_id, users_id) FROM stdin;
    public       postgres    false    206   C
      �	           0    0    blog_comments_id_seq    SEQUENCE SET     ;   SELECT pg_catalog.setval('blog_comments_id_seq', 7, true);
            public       postgres    false    205            ^	          0    26527    django_admin_log 
   TABLE DATA               �   COPY django_admin_log (id, action_time, object_id, object_repr, action_flag, change_message, content_type_id, user_id) FROM stdin;
    public       postgres    false    202   [      �	           0    0    django_admin_log_id_seq    SEQUENCE SET     >   SELECT pg_catalog.setval('django_admin_log_id_seq', 2, true);
            public       postgres    false    201            L	          0    26376    django_content_type 
   TABLE DATA               <   COPY django_content_type (id, app_label, model) FROM stdin;
    public       postgres    false    184   �      �	           0    0    django_content_type_id_seq    SEQUENCE SET     B   SELECT pg_catalog.setval('django_content_type_id_seq', 14, true);
            public       postgres    false    183            J	          0    26365    django_migrations 
   TABLE DATA               <   COPY django_migrations (id, app, name, applied) FROM stdin;
    public       postgres    false    182   �      �	           0    0    django_migrations_id_seq    SEQUENCE SET     @   SELECT pg_catalog.setval('django_migrations_id_seq', 21, true);
            public       postgres    false    181            c	          0    26599    django_session 
   TABLE DATA               I   COPY django_session (session_key, session_data, expire_date) FROM stdin;
    public       postgres    false    207   �      e	          0    26611    django_site 
   TABLE DATA               0   COPY django_site (id, domain, name) FROM stdin;
    public       postgres    false    209   �      �	           0    0    django_site_id_seq    SEQUENCE SET     9   SELECT pg_catalog.setval('django_site_id_seq', 1, true);
            public       postgres    false    208            g	          0    26622    socialaccount_socialaccount 
   TABLE DATA               o   COPY socialaccount_socialaccount (id, provider, uid, last_login, date_joined, extra_data, user_id) FROM stdin;
    public       postgres    false    211   �      �	           0    0 "   socialaccount_socialaccount_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('socialaccount_socialaccount_id_seq', 2, true);
            public       postgres    false    210            i	          0    26633    socialaccount_socialapp 
   TABLE DATA               V   COPY socialaccount_socialapp (id, provider, name, client_id, secret, key) FROM stdin;
    public       postgres    false    213   d      �	           0    0    socialaccount_socialapp_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('socialaccount_socialapp_id_seq', 1, true);
            public       postgres    false    212            k	          0    26641    socialaccount_socialapp_sites 
   TABLE DATA               K   COPY socialaccount_socialapp_sites (id, socialapp_id, site_id) FROM stdin;
    public       postgres    false    215         �	           0    0 $   socialaccount_socialapp_sites_id_seq    SEQUENCE SET     K   SELECT pg_catalog.setval('socialaccount_socialapp_sites_id_seq', 1, true);
            public       postgres    false    214            m	          0    26649    socialaccount_socialtoken 
   TABLE DATA               e   COPY socialaccount_socialtoken (id, token, token_secret, expires_at, account_id, app_id) FROM stdin;
    public       postgres    false    217   /      �	           0    0     socialaccount_socialtoken_id_seq    SEQUENCE SET     G   SELECT pg_catalog.setval('socialaccount_socialtoken_id_seq', 2, true);
            public       postgres    false    216            �           2606    26523    account_emailaddress_email_key 
   CONSTRAINT     h   ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_email_key UNIQUE (email);
 ]   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_email_key;
       public         postgres    false    198    198            �           2606    26495    account_emailaddress_pkey 
   CONSTRAINT     e   ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_pkey PRIMARY KEY (id);
 X   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_pkey;
       public         postgres    false    198    198            �           2606    26507 !   account_emailconfirmation_key_key 
   CONSTRAINT     n   ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_key_key UNIQUE (key);
 e   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_key_key;
       public         postgres    false    200    200            �           2606    26505    account_emailconfirmation_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirmation_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirmation_pkey;
       public         postgres    false    200    200            t           2606    26401    auth_group_name_key 
   CONSTRAINT     R   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_name_key UNIQUE (name);
 H   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_name_key;
       public         postgres    false    188    188            y           2606    26456 ;   auth_group_permissions_group_id_permission_id_0cd325b0_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq UNIQUE (group_id, permission_id);
 |   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_permission_id_0cd325b0_uniq;
       public         postgres    false    190    190    190            |           2606    26409    auth_group_permissions_pkey 
   CONSTRAINT     i   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_pkey PRIMARY KEY (id);
 \   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_pkey;
       public         postgres    false    190    190            v           2606    26399    auth_group_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY auth_group
    ADD CONSTRAINT auth_group_pkey PRIMARY KEY (id);
 D   ALTER TABLE ONLY public.auth_group DROP CONSTRAINT auth_group_pkey;
       public         postgres    false    188    188            o           2606    26442 6   auth_permission_content_type_id_codename_01ab375a_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq UNIQUE (content_type_id, codename);
 p   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_codename_01ab375a_uniq;
       public         postgres    false    186    186    186            q           2606    26391    auth_permission_pkey 
   CONSTRAINT     [   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_pkey;
       public         postgres    false    186    186            �           2606    26427    auth_user_groups_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_pkey;
       public         postgres    false    194    194            �           2606    26471 /   auth_user_groups_user_id_group_id_94350c0c_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq UNIQUE (user_id, group_id);
 j   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_group_id_94350c0c_uniq;
       public         postgres    false    194    194    194            ~           2606    26417    auth_user_pkey 
   CONSTRAINT     O   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_pkey PRIMARY KEY (id);
 B   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_pkey;
       public         postgres    false    192    192            �           2606    26435    auth_user_user_permissions_pkey 
   CONSTRAINT     q   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_pkey PRIMARY KEY (id);
 d   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_pkey;
       public         postgres    false    196    196            �           2606    26485 >   auth_user_user_permissions_user_id_permission_id_14a6b632_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq UNIQUE (user_id, permission_id);
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_permission_id_14a6b632_uniq;
       public         postgres    false    196    196    196            �           2606    26551    auth_user_username_key 
   CONSTRAINT     X   ALTER TABLE ONLY auth_user
    ADD CONSTRAINT auth_user_username_key UNIQUE (username);
 J   ALTER TABLE ONLY public.auth_user DROP CONSTRAINT auth_user_username_key;
       public         postgres    false    192    192            �           2606    26566    blog_articles_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY blog_articles
    ADD CONSTRAINT blog_articles_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_articles DROP CONSTRAINT blog_articles_pkey;
       public         postgres    false    204    204            �           2606    26568    blog_articles_title_key 
   CONSTRAINT     Z   ALTER TABLE ONLY blog_articles
    ADD CONSTRAINT blog_articles_title_key UNIQUE (title);
 O   ALTER TABLE ONLY public.blog_articles DROP CONSTRAINT blog_articles_title_key;
       public         postgres    false    204    204            �           2606    26579    blog_comments_pkey 
   CONSTRAINT     W   ALTER TABLE ONLY blog_comments
    ADD CONSTRAINT blog_comments_pkey PRIMARY KEY (id);
 J   ALTER TABLE ONLY public.blog_comments DROP CONSTRAINT blog_comments_pkey;
       public         postgres    false    206    206            �           2606    26536    django_admin_log_pkey 
   CONSTRAINT     ]   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_pkey PRIMARY KEY (id);
 P   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_pkey;
       public         postgres    false    202    202            j           2606    26383 1   django_content_type_app_label_model_76bd3d3b_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq UNIQUE (app_label, model);
 o   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_app_label_model_76bd3d3b_uniq;
       public         postgres    false    184    184    184            l           2606    26381    django_content_type_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY django_content_type
    ADD CONSTRAINT django_content_type_pkey PRIMARY KEY (id);
 V   ALTER TABLE ONLY public.django_content_type DROP CONSTRAINT django_content_type_pkey;
       public         postgres    false    184    184            h           2606    26373    django_migrations_pkey 
   CONSTRAINT     _   ALTER TABLE ONLY django_migrations
    ADD CONSTRAINT django_migrations_pkey PRIMARY KEY (id);
 R   ALTER TABLE ONLY public.django_migrations DROP CONSTRAINT django_migrations_pkey;
       public         postgres    false    182    182            �           2606    26606    django_session_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY django_session
    ADD CONSTRAINT django_session_pkey PRIMARY KEY (session_key);
 L   ALTER TABLE ONLY public.django_session DROP CONSTRAINT django_session_pkey;
       public         postgres    false    207    207            �           2606    26618     django_site_domain_a2e37b91_uniq 
   CONSTRAINT     b   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_domain_a2e37b91_uniq UNIQUE (domain);
 V   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_domain_a2e37b91_uniq;
       public         postgres    false    209    209            �           2606    26616    django_site_pkey 
   CONSTRAINT     S   ALTER TABLE ONLY django_site
    ADD CONSTRAINT django_site_pkey PRIMARY KEY (id);
 F   ALTER TABLE ONLY public.django_site DROP CONSTRAINT django_site_pkey;
       public         postgres    false    209    209            �           2606    26630     socialaccount_socialaccount_pkey 
   CONSTRAINT     s   ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_pkey PRIMARY KEY (id);
 f   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_pkey;
       public         postgres    false    211    211            �           2606    26661 6   socialaccount_socialaccount_provider_uid_fc810c6e_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq UNIQUE (provider, uid);
 |   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_provider_uid_fc810c6e_uniq;
       public         postgres    false    211    211    211            �           2606    26679 ;   socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq UNIQUE (socialapp_id, site_id);
 �   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp__socialapp_id_site_id_71a9a768_uniq;
       public         postgres    false    215    215    215            �           2606    26638    socialaccount_socialapp_pkey 
   CONSTRAINT     k   ALTER TABLE ONLY socialaccount_socialapp
    ADD CONSTRAINT socialaccount_socialapp_pkey PRIMARY KEY (id);
 ^   ALTER TABLE ONLY public.socialaccount_socialapp DROP CONSTRAINT socialaccount_socialapp_pkey;
       public         postgres    false    213    213            �           2606    26646 "   socialaccount_socialapp_sites_pkey 
   CONSTRAINT     w   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_socialapp_sites_pkey PRIMARY KEY (id);
 j   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_socialapp_sites_pkey;
       public         postgres    false    215    215            �           2606    26659 9   socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq 
   CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq UNIQUE (app_id, account_id);
 }   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_app_id_account_id_fca4e0ac_uniq;
       public         postgres    false    217    217    217            �           2606    26657    socialaccount_socialtoken_pkey 
   CONSTRAINT     o   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_socialtoken_pkey PRIMARY KEY (id);
 b   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_socialtoken_pkey;
       public         postgres    false    217    217            �           1259    26524 (   account_emailaddress_email_03be32b2_like    INDEX     w   CREATE INDEX account_emailaddress_email_03be32b2_like ON account_emailaddress USING btree (email varchar_pattern_ops);
 <   DROP INDEX public.account_emailaddress_email_03be32b2_like;
       public         postgres    false    198            �           1259    26514 %   account_emailaddress_user_id_2c513194    INDEX     b   CREATE INDEX account_emailaddress_user_id_2c513194 ON account_emailaddress USING btree (user_id);
 9   DROP INDEX public.account_emailaddress_user_id_2c513194;
       public         postgres    false    198            �           1259    26521 3   account_emailconfirmation_email_address_id_5b7f8c58    INDEX     ~   CREATE INDEX account_emailconfirmation_email_address_id_5b7f8c58 ON account_emailconfirmation USING btree (email_address_id);
 G   DROP INDEX public.account_emailconfirmation_email_address_id_5b7f8c58;
       public         postgres    false    200            �           1259    26520 +   account_emailconfirmation_key_f43612bd_like    INDEX     }   CREATE INDEX account_emailconfirmation_key_f43612bd_like ON account_emailconfirmation USING btree (key varchar_pattern_ops);
 ?   DROP INDEX public.account_emailconfirmation_key_f43612bd_like;
       public         postgres    false    200            r           1259    26444    auth_group_name_a6ea08ec_like    INDEX     a   CREATE INDEX auth_group_name_a6ea08ec_like ON auth_group USING btree (name varchar_pattern_ops);
 1   DROP INDEX public.auth_group_name_a6ea08ec_like;
       public         postgres    false    188            w           1259    26457 (   auth_group_permissions_group_id_b120cbf9    INDEX     h   CREATE INDEX auth_group_permissions_group_id_b120cbf9 ON auth_group_permissions USING btree (group_id);
 <   DROP INDEX public.auth_group_permissions_group_id_b120cbf9;
       public         postgres    false    190            z           1259    26458 -   auth_group_permissions_permission_id_84c5c92e    INDEX     r   CREATE INDEX auth_group_permissions_permission_id_84c5c92e ON auth_group_permissions USING btree (permission_id);
 A   DROP INDEX public.auth_group_permissions_permission_id_84c5c92e;
       public         postgres    false    190            m           1259    26443 (   auth_permission_content_type_id_2f476e4b    INDEX     h   CREATE INDEX auth_permission_content_type_id_2f476e4b ON auth_permission USING btree (content_type_id);
 <   DROP INDEX public.auth_permission_content_type_id_2f476e4b;
       public         postgres    false    186            �           1259    26473 "   auth_user_groups_group_id_97559544    INDEX     \   CREATE INDEX auth_user_groups_group_id_97559544 ON auth_user_groups USING btree (group_id);
 6   DROP INDEX public.auth_user_groups_group_id_97559544;
       public         postgres    false    194            �           1259    26472 !   auth_user_groups_user_id_6a12ed8b    INDEX     Z   CREATE INDEX auth_user_groups_user_id_6a12ed8b ON auth_user_groups USING btree (user_id);
 5   DROP INDEX public.auth_user_groups_user_id_6a12ed8b;
       public         postgres    false    194            �           1259    26487 1   auth_user_user_permissions_permission_id_1fbb5f2c    INDEX     z   CREATE INDEX auth_user_user_permissions_permission_id_1fbb5f2c ON auth_user_user_permissions USING btree (permission_id);
 E   DROP INDEX public.auth_user_user_permissions_permission_id_1fbb5f2c;
       public         postgres    false    196            �           1259    26486 +   auth_user_user_permissions_user_id_a95ead1b    INDEX     n   CREATE INDEX auth_user_user_permissions_user_id_a95ead1b ON auth_user_user_permissions USING btree (user_id);
 ?   DROP INDEX public.auth_user_user_permissions_user_id_a95ead1b;
       public         postgres    false    196                       1259    26552     auth_user_username_6821ab7c_like    INDEX     g   CREATE INDEX auth_user_username_6821ab7c_like ON auth_user USING btree (username varchar_pattern_ops);
 4   DROP INDEX public.auth_user_username_6821ab7c_like;
       public         postgres    false    192            �           1259    26586     blog_articles_author_id_dec6a721    INDEX     X   CREATE INDEX blog_articles_author_id_dec6a721 ON blog_articles USING btree (author_id);
 4   DROP INDEX public.blog_articles_author_id_dec6a721;
       public         postgres    false    204            �           1259    26585 !   blog_articles_title_aa59b783_like    INDEX     i   CREATE INDEX blog_articles_title_aa59b783_like ON blog_articles USING btree (title varchar_pattern_ops);
 5   DROP INDEX public.blog_articles_title_aa59b783_like;
       public         postgres    false    204            �           1259    26597 !   blog_comments_article_id_b352d87e    INDEX     Z   CREATE INDEX blog_comments_article_id_b352d87e ON blog_comments USING btree (article_id);
 5   DROP INDEX public.blog_comments_article_id_b352d87e;
       public         postgres    false    206            �           1259    26598    blog_comments_users_id_0ae7e071    INDEX     V   CREATE INDEX blog_comments_users_id_0ae7e071 ON blog_comments USING btree (users_id);
 3   DROP INDEX public.blog_comments_users_id_0ae7e071;
       public         postgres    false    206            �           1259    26547 )   django_admin_log_content_type_id_c4bce8eb    INDEX     j   CREATE INDEX django_admin_log_content_type_id_c4bce8eb ON django_admin_log USING btree (content_type_id);
 =   DROP INDEX public.django_admin_log_content_type_id_c4bce8eb;
       public         postgres    false    202            �           1259    26548 !   django_admin_log_user_id_c564eba6    INDEX     Z   CREATE INDEX django_admin_log_user_id_c564eba6 ON django_admin_log USING btree (user_id);
 5   DROP INDEX public.django_admin_log_user_id_c564eba6;
       public         postgres    false    202            �           1259    26608 #   django_session_expire_date_a5c62663    INDEX     ^   CREATE INDEX django_session_expire_date_a5c62663 ON django_session USING btree (expire_date);
 7   DROP INDEX public.django_session_expire_date_a5c62663;
       public         postgres    false    207            �           1259    26607 (   django_session_session_key_c0390e0f_like    INDEX     w   CREATE INDEX django_session_session_key_c0390e0f_like ON django_session USING btree (session_key varchar_pattern_ops);
 <   DROP INDEX public.django_session_session_key_c0390e0f_like;
       public         postgres    false    207            �           1259    26619     django_site_domain_a2e37b91_like    INDEX     g   CREATE INDEX django_site_domain_a2e37b91_like ON django_site USING btree (domain varchar_pattern_ops);
 4   DROP INDEX public.django_site_domain_a2e37b91_like;
       public         postgres    false    209            �           1259    26667 ,   socialaccount_socialaccount_user_id_8146e70c    INDEX     p   CREATE INDEX socialaccount_socialaccount_user_id_8146e70c ON socialaccount_socialaccount USING btree (user_id);
 @   DROP INDEX public.socialaccount_socialaccount_user_id_8146e70c;
       public         postgres    false    211            �           1259    26681 .   socialaccount_socialapp_sites_site_id_2579dee5    INDEX     t   CREATE INDEX socialaccount_socialapp_sites_site_id_2579dee5 ON socialaccount_socialapp_sites USING btree (site_id);
 B   DROP INDEX public.socialaccount_socialapp_sites_site_id_2579dee5;
       public         postgres    false    215            �           1259    26680 3   socialaccount_socialapp_sites_socialapp_id_97fb6e7d    INDEX     ~   CREATE INDEX socialaccount_socialapp_sites_socialapp_id_97fb6e7d ON socialaccount_socialapp_sites USING btree (socialapp_id);
 G   DROP INDEX public.socialaccount_socialapp_sites_socialapp_id_97fb6e7d;
       public         postgres    false    215            �           1259    26692 -   socialaccount_socialtoken_account_id_951f210e    INDEX     r   CREATE INDEX socialaccount_socialtoken_account_id_951f210e ON socialaccount_socialtoken USING btree (account_id);
 A   DROP INDEX public.socialaccount_socialtoken_account_id_951f210e;
       public         postgres    false    217            �           1259    26693 )   socialaccount_socialtoken_app_id_636a42d7    INDEX     j   CREATE INDEX socialaccount_socialtoken_app_id_636a42d7 ON socialaccount_socialtoken USING btree (app_id);
 =   DROP INDEX public.socialaccount_socialtoken_app_id_636a42d7;
       public         postgres    false    217            �           2606    26508 5   account_emailaddress_user_id_2c513194_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY account_emailaddress
    ADD CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 t   ALTER TABLE ONLY public.account_emailaddress DROP CONSTRAINT account_emailaddress_user_id_2c513194_fk_auth_user_id;
       public       postgres    false    198    192    2174            �           2606    26515 ;   account_emailconfirm_email_address_id_5b7f8c58_fk_account_e    FK CONSTRAINT     �   ALTER TABLE ONLY account_emailconfirmation
    ADD CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e FOREIGN KEY (email_address_id) REFERENCES account_emailaddress(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.account_emailconfirmation DROP CONSTRAINT account_emailconfirm_email_address_id_5b7f8c58_fk_account_e;
       public       postgres    false    200    198    2194            �           2606    26450 8   auth_group_permissio_permission_id_84c5c92e_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissio_permission_id_84c5c92e_fk_auth_perm;
       public       postgres    false    186    2161    190            �           2606    26445 9   auth_group_permissions_group_id_b120cbf9_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_group_permissions
    ADD CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.auth_group_permissions DROP CONSTRAINT auth_group_permissions_group_id_b120cbf9_fk_auth_group_id;
       public       postgres    false    188    190    2166            �           2606    26436 5   auth_permission_content_type_id_2f476e4b_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY auth_permission
    ADD CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 o   ALTER TABLE ONLY public.auth_permission DROP CONSTRAINT auth_permission_content_type_id_2f476e4b_fk_django_co;
       public       postgres    false    184    2156    186            �           2606    26465 3   auth_user_groups_group_id_97559544_fk_auth_group_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id FOREIGN KEY (group_id) REFERENCES auth_group(id) DEFERRABLE INITIALLY DEFERRED;
 n   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_group_id_97559544_fk_auth_group_id;
       public       postgres    false    194    2166    188            �           2606    26460 1   auth_user_groups_user_id_6a12ed8b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_groups
    ADD CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.auth_user_groups DROP CONSTRAINT auth_user_groups_user_id_6a12ed8b_fk_auth_user_id;
       public       postgres    false    2174    192    194            �           2606    26479 8   auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm FOREIGN KEY (permission_id) REFERENCES auth_permission(id) DEFERRABLE INITIALLY DEFERRED;
 }   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permi_permission_id_1fbb5f2c_fk_auth_perm;
       public       postgres    false    196    186    2161            �           2606    26474 ;   auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY auth_user_user_permissions
    ADD CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.auth_user_user_permissions DROP CONSTRAINT auth_user_user_permissions_user_id_a95ead1b_fk_auth_user_id;
       public       postgres    false    192    2174    196            �           2606    26580 0   blog_articles_author_id_dec6a721_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY blog_articles
    ADD CONSTRAINT blog_articles_author_id_dec6a721_fk_auth_user_id FOREIGN KEY (author_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 h   ALTER TABLE ONLY public.blog_articles DROP CONSTRAINT blog_articles_author_id_dec6a721_fk_auth_user_id;
       public       postgres    false    204    2174    192            �           2606    26587 5   blog_comments_article_id_b352d87e_fk_blog_articles_id    FK CONSTRAINT     �   ALTER TABLE ONLY blog_comments
    ADD CONSTRAINT blog_comments_article_id_b352d87e_fk_blog_articles_id FOREIGN KEY (article_id) REFERENCES blog_articles(id) DEFERRABLE INITIALLY DEFERRED;
 m   ALTER TABLE ONLY public.blog_comments DROP CONSTRAINT blog_comments_article_id_b352d87e_fk_blog_articles_id;
       public       postgres    false    204    2208    206            �           2606    26592 /   blog_comments_users_id_0ae7e071_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY blog_comments
    ADD CONSTRAINT blog_comments_users_id_0ae7e071_fk_auth_user_id FOREIGN KEY (users_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 g   ALTER TABLE ONLY public.blog_comments DROP CONSTRAINT blog_comments_users_id_0ae7e071_fk_auth_user_id;
       public       postgres    false    206    192    2174            �           2606    26537 6   django_admin_log_content_type_id_c4bce8eb_fk_django_co    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co FOREIGN KEY (content_type_id) REFERENCES django_content_type(id) DEFERRABLE INITIALLY DEFERRED;
 q   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_content_type_id_c4bce8eb_fk_django_co;
       public       postgres    false    202    184    2156            �           2606    26542 1   django_admin_log_user_id_c564eba6_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY django_admin_log
    ADD CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 l   ALTER TABLE ONLY public.django_admin_log DROP CONSTRAINT django_admin_log_user_id_c564eba6_fk_auth_user_id;
       public       postgres    false    192    202    2174            �           2606    26682 5   socialaccount_social_account_id_951f210e_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc FOREIGN KEY (account_id) REFERENCES socialaccount_socialaccount(id) DEFERRABLE INITIALLY DEFERRED;
 y   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_account_id_951f210e_fk_socialacc;
       public       postgres    false    211    217    2226            �           2606    26687 1   socialaccount_social_app_id_636a42d7_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialtoken
    ADD CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc FOREIGN KEY (app_id) REFERENCES socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
 u   ALTER TABLE ONLY public.socialaccount_socialtoken DROP CONSTRAINT socialaccount_social_app_id_636a42d7_fk_socialacc;
       public       postgres    false    2231    213    217            �           2606    26673 2   socialaccount_social_site_id_2579dee5_fk_django_si    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si FOREIGN KEY (site_id) REFERENCES django_site(id) DEFERRABLE INITIALLY DEFERRED;
 z   ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_site_id_2579dee5_fk_django_si;
       public       postgres    false    209    2224    215            �           2606    26668 7   socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialapp_sites
    ADD CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc FOREIGN KEY (socialapp_id) REFERENCES socialaccount_socialapp(id) DEFERRABLE INITIALLY DEFERRED;
    ALTER TABLE ONLY public.socialaccount_socialapp_sites DROP CONSTRAINT socialaccount_social_socialapp_id_97fb6e7d_fk_socialacc;
       public       postgres    false    213    2231    215            �           2606    26662 <   socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id    FK CONSTRAINT     �   ALTER TABLE ONLY socialaccount_socialaccount
    ADD CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id FOREIGN KEY (user_id) REFERENCES auth_user(id) DEFERRABLE INITIALLY DEFERRED;
 �   ALTER TABLE ONLY public.socialaccount_socialaccount DROP CONSTRAINT socialaccount_socialaccount_user_id_8146e70c_fk_auth_user_id;
       public       postgres    false    192    2174    211            Z	      x������ � �      \	      x������ � �      P	      x������ � �      R	      x������ � �      N	   �  x�}�ͮ� ���)��Iڮ�5FE)�7��)����C�`����;�P���n��ۭ�{�f��(���o��-�����|w�J%mont^��D`]L���X���qw�mtJD�m2��8��W�Mþˬl4�\�� ю�W�)X4f�>���6UG�����E�n� Z$����e��>+��:�D,=+�k�����n��c��%���m�1�@�y bл`�KZ�Jv�wꜼ��I�nv��	��G��������m��3�%Z������P�)�5�t�ŀ��%mXm�ԕ�b	L���p�(���H�CŅ�f�.��:}���;ė��� s�u�ȯWD�$��P�_�D�C��/�\�i/����I)b��~Jb��[�_�W��[LE��QPR�[̢�( ��-f��n�C?�]�4Q����D�q�I4/d}b�n���	X��.���r�V�\&�qD����_ �pl�      T	   -  x����j�PF�7OQ�]1��sn.tam�bh���BI��Zc��J��MQ����j`8�>FZ��2�<����<�!�'Eo�6��r���8���:�7�k��)���߂�ȊY�%qmQ�6���8%ͩ���4&�DT'ޠ�3yOW�y�d�ͻ ��Ў���9F���&3w7�\o���8�TUg��<T��_o���_�]M-���g��"L�)�(r�L)PI<+r�4�.{���a^;�<�o�=Ϋر�q���Q]��Y/L@Kp��K���橖�T��]�z1��ksf      V	      x������ � �      X	      x������ � �      `	   #  x�}X�n�H]+_Q� �(j=���i�N;�$q��H�@6%�$VDUq�H3�� �����/�sn���f��6�����s��rt[ب.m�M�C�.}S�F���Vo�ۨ�V���MT���N|t�Y�v�TQ}\�[�Goת�*��q���Z��q��9���J�೭�e�j���4c�l�Q�]���PU�+����;<ӵn}S�b^��hkCs1dzm�3:�:���;�_�m�N�2ea���<a<�n\&1�K�y�ԱV�D����(~�\�P���צ�J#�s��%�tS�h�N�Q�����m�o�B�ty�Tk�Lڀ'��J�hyւ)��K��
��H��Bo�Ǧo$Ș��������U�D����ȫ󵊵�*:�d"�����MQ�r�
�w�[F�0��]����(�M��ϧ��k��2f�Z�b��W 	oT�7w�Ե�o��Ζ��Y]F��纛�7=xb�Y+�#3��y���e&��&��tv�bz�bz�f/���g��d�8>::��ty����]���œ��X]y�G�;�t���MG[v���&���ʚZ�zu�=rz���6;<e�h��� �Y���4��?I>*��5��Ψ���|�pe�j�^y�U,8b�l�>�|��u�������\�d��Bd���Y��}� (��=2u(zH�fTt%����M��?�ț��5��{q��
��	j÷�������7.@�5����}�m�ZC�J3����h�]ĵ0<��A�qBrA���7fh?���ecԳW_��ؐx�tޔuod��^y4�Q�x֘��x:���f" �}�)�26/���^ŦB�L�>i�EX���X;dG�tT��_��Z��ן�V�)%�9�};&�eŀ`�t��:�V�9�6�lU�T8.�''`� �V��5�,.����:d�<;��]��O�����A��G�'�4,�M�^6��~ӄZ]��k���8GÀN0Iv����9Z�-B�Drv��u�2à`�������T��ds��6re��L������2�*T<��n��m�h�ԉ�8y6��jU�?�M�l$id��. �6h͞;�6'��&u�-��W��.��0V�m,��
�8Yn{ŕ��&r�  �އ����r�ѥ�q�T���ZU�dF�]�]�wĤ�7�$A��3HAd�7Q(��E��aS��4����3S^A%���O_�m|ذz�w:;;��-�&G�����F3�h1����Ϊ��૾��S�c�?�FBa^o�`]��X�����	���l�'����݉������IhY5�M��O�<�>����F!�h����x����o�W����νB���=���F�ӗh�5�h�g�w��e$X$��~�-|s��M���|G��r����Js�v#L+�(��,CVo��r=F���jB���0�U\pSשQ@��`�$�)}&#}�>r�� *�J�sb�M�Y�V�z�!'�711/'�w����m䰲Dg�q�*uf&��z��[@� �J{M��!��ր�����G��¤٘�;8����=�6 	�?�K��QB�Y�kO]���VsZ�O��y�Ql�qb��A�Ҷ��$F��!8�1	��șs���z����;�'H�g���Pa2r=H���y�Za�l�Đ�ɶo�5���7^��%�w�u퓪������ �����?þb�;���F�:$�Y:X��"���h���� k��Hh[�nt��s�2X�á��b Na��Z2�ȢuJ]ZC%&&�zg6{����-8�a�ISA�1�����,0�؂6�$??���O
tq6;�̎��˗�$�xr4�NS^H�#u?�U���ƫ��D�/J��od��p�+��"��G�썦��p���jTo���I��B���)�~�$q݉j�U����H��F��:�v4�.���8H���LFGӬz8�Ƽ�	�Þ�}����~	�Wl��2�5B)�4 ���J�@85����*Jr�{�ֺmy/�Xޕ(����'O��@X=�N���\G?��#�O�&*{�:,mOÐ�z�U���w�� ����jd5����0%L3�\�i�_�OF��߿~}����r19^�<9�?D���w[̖ d�lL!��K� ��MWBÂu�}0�y�0�P+�l�!���{�4�~�CK�B�W��1� v�ᘁ�K�[>�.�бk0a�TF����kIw�X����͛~��7&{1?ݏK��n�K@��U�!��~��n��c��v@��!%W�-�v,�R%�>`/�[	���q~�1A�!�jb/4�@�A$;+��'99[�&''�ӗ�7���W�i����6���5���c ��i�|�$�x{!_:�0׾U����#:/��=����Cuނ#e�	�����J7\�JQ�(��b��F7�w�/8��-���&��X�A`�:������ĊK�p�`#�>p���C�R��V�
�uf�h�8�ex���(Dp�y��"�&��9��A1h�a?�%+��0e�1K;��*$@cJ�z���J�X�Br�U��ֈ6)�Dq�����m�@�?��]҂60E����Nϖ���r6�>�IZ����n�zU`�q�{�kK���9P�E�@p�\}��G�H�Q�Ǟ��'|F�U.Qӥ�+l�7r��Y��C.���M��n�bƼ��I&�W;~6�pB�Wt�qTSk'T�Y���R�ɹ��ґ�c=Ί�)+ܷh�p���%Y#'�Y��A>�L���P��I e��U�(_�C
��*~ :�LPCq���qN�\�&��q�ӳ��dy���k�m��ɓ�q	��      b	     x�u��j� ���)f�eEGMԇ詗B/�����%1B޾��](�a`��QN"�R��¶d��wWf��ƭ�V2�[a��`�
F8�I�+�e�/y��kQƅ��<ּ i��2ė\T�e@��:�@XΩ�9������eŅ���;*-*�jD��Ǵ����wj=�↸z�����s?��
�<�����=�sЧ~Z��G�3�/{[��r�J+��OD4��^�*N[�\��ho)M+�����k��|e��ݟFV�m����p1      ^	   �   x�]��� D��W����],A��
U�����4Mz�i&��{�شd[2���V��2Ү#`He�i)���D
����9t́�5���:`(�_3^�~�8��X��uL��V3�<�T���C��?���K!���*o      L	   �   x�mOI�0<ۏA���/\BjJDG�s��I	�@���l�ƀ��0�HQ�آO3�����E<G�S�2�q��9��<��' �g�նL��u�KT�`�T�����x���0�z����Ӫ~QJh̦�������5�� �ZlV�&��F8�����f�      J	   �  x����n� ������U�~M�e%Dc6�ֆpվ}qd�HAro�0:3g���|�>篫M �v�eg�� �P/ �Rx��W ������D:��G"�K�6�����t��@qӱG�v6nҳ�ԓ��RE�����3����d��j��"z
��T��������}�f��� �0��fR!ہ^O�7�m��P�n:�f�6꫍�K����P ��P;�n�%��G�2�8a'�GҺܪ
ל�)���)��2��W�]iq��s� (T��MQ�~_\ܭ��@��9X��Cw��
�0�M1���6��lS2��3.�nۉCӨ�p`{y�{+��ZIJD:�.�[`�xѣ�T�������	���wYM�JƼ^�{_Z�=%
��P]
�r�_ѫA���x����o�O�0�j�AT���.�(��k�)�ѝs�壨�?��t��H|�      c	   ,  x�ŔM��8���_���D��H����	YPۈ,���K�I��$��_g��H=��i�TF.?��-W�[7���y�ݵTȺy}u.���	r�
����
��@��Y��O N���;�6%bM����*��^�V��>:6�><�n(xCt�YJ!���LPĚ8���FQ(�ֈ���P�)�ש_���g�x�DٸGQEѭ)TR�uT��z/*0�y�h��o�G�X��rtV����T|�|��>?�hd(.5�#o� �}�w��-�|jA{�o�YX��Rl�ɾ��xt/jv�����	��*��X�D/u�W��*��6�� ��h��;`�t�`"�Kْ�����=���W���|_�"Mi���ע����V�!�����ӽ�k��ӟ}�����r��g,	�ױ����E���=➾J~���M�Q����s���3�9yT��qz6X�7���ľ�Q�q	�7�hf�E����=n!C�al��C�k��p��p��;���������:�\8�,����x��q,NG8�yV3!Gf"U����<kHE8`f��<��o���Ds˿4
Q$%E��[TIQP�n�hg�yd���6�4�7�ȃ
:�村��DWZ;�|�m���l��'�L�u�������}�p[����4����nA������7U����u��w&8�6U��z��X3w �M4Q��aʬ�؏�4R�D�J���i�izFD�)c0���["�rAu��*�w=���\b�����eθ�-�=�@=��k����7p��u      e	   #   x�3���ON���/.��000�L��O����� t�e      g	   Y  x����O�0ǟ��b٫�]�v]��	1<� h4Ą�Q��~��w�D@������w���>؈�"J���c� ��2J�7`��naWR.���T�3`҅����$��a��W�L�fY)[Zv�4e-'�)����Uy���E��6�d0��^R��?��{:��s5���E�wʸh
�TF��e�A�Ι�A��X�8�:�dI��}��zZ�A�J*�q��t�i]W$���z�.���p��گ���g��D2�Bw�� &9 ᄽ_Tx�b`�'A�I"$P.#T�D��d.�qv	���ƛ�u8�t#�X8|�Ƶ��n��HN��ҟ t�m׼G�i�4 �X      i	   �   x�%���   �3��,$��N]�f�mm�ђ �|�}�i�T��H�%$���������OF������L�~�Ĭu��g'��h/�Gܼ@�������SU��zgC����zc�oYk뺬op�{b�V��ڑ~Nt�7!���3      k	      x�3�4�4����� �X      m	   !  x�U��R�@  �3<E�fwa��&,!�@&�4�`��ď-<}:����{s���K�A�}�����n�?�uզ_��7�vW����ښ�R��O�8�δ�=p��h%L�H̢�����yɸEӰ�!m������ �$`H@{���j&Z�*�H�� �
� E�gJb6�n��5�P�kb��F˶[�,���c��s6:���$��k>�h�^��q���o�g��'��Ӱ^�C3}�Ab��NU;+ڲv����O�M����c�;E��,����f     