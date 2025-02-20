PGDMP  6    
                |            Proyecto_Dingo_QA    16.3    16.3 )    �           0    0    ENCODING    ENCODING        SET client_encoding = 'UTF8';
                      false            �           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            �           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false                        1262    16398    Proyecto_Dingo_QA    DATABASE     �   CREATE DATABASE "Proyecto_Dingo_QA" WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE_PROVIDER = libc LOCALE = 'English_United States.1252';
 #   DROP DATABASE "Proyecto_Dingo_QA";
                postgres    false            �            1259    16428    Dim_Cliente    TABLE     �   CREATE TABLE public."Dim_Cliente" (
    "ID_Cliente" integer NOT NULL,
    "Nombre" character varying(50)[],
    "Cedula" character varying(50)[],
    "Foto_Perfil" bit varying(256)[],
    "Token_Unique" bigint[]
);
 !   DROP TABLE public."Dim_Cliente";
       public         heap    postgres    false            �            1259    16466    Dim_ClienteContacto    TABLE       CREATE TABLE public."Dim_ClienteContacto" (
    "ID_ClienteContacto" integer NOT NULL,
    "NumeroTlf" character varying(20)[],
    "Foto" bit varying(256)[],
    "Direccion" character varying(100)[],
    "Correo" character varying(100)[],
    "Password" character varying(100)[]
);
 )   DROP TABLE public."Dim_ClienteContacto";
       public         heap    postgres    false            �            1259    16402    Diseño_App    TABLE     M   CREATE TABLE public."Diseño_App" (
    "ID_Diseño_App" integer NOT NULL
);
 !   DROP TABLE public."Diseño_App";
       public         heap    postgres    false            �            1259    16421    Login    TABLE     �   CREATE TABLE public."Login" (
    "ID_Login" integer NOT NULL,
    "Correo" character varying(50)[],
    "Password" character varying(50)[]
);
    DROP TABLE public."Login";
       public         heap    postgres    false            �            1259    16449    Numero_Pedido    TABLE     �   CREATE TABLE public."Numero_Pedido" (
    "ID_Numero_Pedido" integer NOT NULL,
    "Numero" character varying[],
    "Fecha" timestamp with time zone
);
 #   DROP TABLE public."Numero_Pedido";
       public         heap    postgres    false            �            1259    16473    Numero_PedidoC    TABLE     �   CREATE TABLE public."Numero_PedidoC" (
    "ID_Numero_Pedido" integer NOT NULL,
    "Numero" character varying(50)[],
    "Fecha" timestamp with time zone
);
 $   DROP TABLE public."Numero_PedidoC";
       public         heap    postgres    false            �            1259    16414 	   Operacion    TABLE     �   CREATE TABLE public."Operacion" (
    "ID_Operacion_Registro" integer NOT NULL,
    "Tipo_Operacion" character varying(50),
    "Fecha_Operacion" character varying(50)[]
);
    DROP TABLE public."Operacion";
       public         heap    postgres    false            �            1259    16442    Pedidos    TABLE     o   CREATE TABLE public."Pedidos" (
    "ID_Pedidos" integer[] NOT NULL,
    "Pedidos" character varying(100)[]
);
    DROP TABLE public."Pedidos";
       public         heap    postgres    false            �            1259    16480    PedidosC    TABLE     m   CREATE TABLE public."PedidosC" (
    "ID_Pedidos" integer NOT NULL,
    "Pedidos" character varying(50)[]
);
    DROP TABLE public."PedidosC";
       public         heap    postgres    false            �            1259    16407    Registro    TABLE     �   CREATE TABLE public."Registro" (
    "ID_Registro" integer NOT NULL,
    "Nombre" character varying(50)[],
    "Cedula" bigint,
    "Foto_Perfil" bit varying(256)[]
);
    DROP TABLE public."Registro";
       public         heap    postgres    false            �            1259    16435    Repartidores    TABLE     �   CREATE TABLE public."Repartidores" (
    "ID_Repartidor" integer NOT NULL,
    "Nombre" character varying(50)[],
    "Cedula" character varying(50)[]
);
 "   DROP TABLE public."Repartidores";
       public         heap    postgres    false            �            1259    16461    Roles    TABLE     [   CREATE TABLE public."Roles" (
    "ID_Roles" integer,
    "Rol" character varying(10)[]
);
    DROP TABLE public."Roles";
       public         heap    postgres    false            �            1259    16399    dim_colores    TABLE     ]   CREATE TABLE public.dim_colores (
    id_color integer,
    colores character varying(30)
);
    DROP TABLE public.dim_colores;
       public         heap    postgres    false            �          0    16428    Dim_Cliente 
   TABLE DATA           h   COPY public."Dim_Cliente" ("ID_Cliente", "Nombre", "Cedula", "Foto_Perfil", "Token_Unique") FROM stdin;
    public          postgres    false    220   t-       �          0    16466    Dim_ClienteContacto 
   TABLE DATA           }   COPY public."Dim_ClienteContacto" ("ID_ClienteContacto", "NumeroTlf", "Foto", "Direccion", "Correo", "Password") FROM stdin;
    public          postgres    false    225   �-       �          0    16402    Diseño_App 
   TABLE DATA           9   COPY public."Diseño_App" ("ID_Diseño_App") FROM stdin;
    public          postgres    false    216   �-       �          0    16421    Login 
   TABLE DATA           C   COPY public."Login" ("ID_Login", "Correo", "Password") FROM stdin;
    public          postgres    false    219   �-       �          0    16449    Numero_Pedido 
   TABLE DATA           P   COPY public."Numero_Pedido" ("ID_Numero_Pedido", "Numero", "Fecha") FROM stdin;
    public          postgres    false    223   �-       �          0    16473    Numero_PedidoC 
   TABLE DATA           Q   COPY public."Numero_PedidoC" ("ID_Numero_Pedido", "Numero", "Fecha") FROM stdin;
    public          postgres    false    226   .       �          0    16414 	   Operacion 
   TABLE DATA           c   COPY public."Operacion" ("ID_Operacion_Registro", "Tipo_Operacion", "Fecha_Operacion") FROM stdin;
    public          postgres    false    218   ".       �          0    16442    Pedidos 
   TABLE DATA           <   COPY public."Pedidos" ("ID_Pedidos", "Pedidos") FROM stdin;
    public          postgres    false    222   ?.       �          0    16480    PedidosC 
   TABLE DATA           =   COPY public."PedidosC" ("ID_Pedidos", "Pedidos") FROM stdin;
    public          postgres    false    227   \.       �          0    16407    Registro 
   TABLE DATA           V   COPY public."Registro" ("ID_Registro", "Nombre", "Cedula", "Foto_Perfil") FROM stdin;
    public          postgres    false    217   y.       �          0    16435    Repartidores 
   TABLE DATA           M   COPY public."Repartidores" ("ID_Repartidor", "Nombre", "Cedula") FROM stdin;
    public          postgres    false    221   �.       �          0    16461    Roles 
   TABLE DATA           4   COPY public."Roles" ("ID_Roles", "Rol") FROM stdin;
    public          postgres    false    224   �.       �          0    16399    dim_colores 
   TABLE DATA           8   COPY public.dim_colores (id_color, colores) FROM stdin;
    public          postgres    false    215   �.       Z           2606    16472 ,   Dim_ClienteContacto Dim_ClienteContacto_pkey 
   CONSTRAINT     �   ALTER TABLE ONLY public."Dim_ClienteContacto"
    ADD CONSTRAINT "Dim_ClienteContacto_pkey" PRIMARY KEY ("ID_ClienteContacto");
 Z   ALTER TABLE ONLY public."Dim_ClienteContacto" DROP CONSTRAINT "Dim_ClienteContacto_pkey";
       public            postgres    false    225            R           2606    16434    Dim_Cliente Dim_Cliente_pkey 
   CONSTRAINT     h   ALTER TABLE ONLY public."Dim_Cliente"
    ADD CONSTRAINT "Dim_Cliente_pkey" PRIMARY KEY ("ID_Cliente");
 J   ALTER TABLE ONLY public."Dim_Cliente" DROP CONSTRAINT "Dim_Cliente_pkey";
       public            postgres    false    220            J           2606    16406    Diseño_App Diseño_App_pkey 
   CONSTRAINT     l   ALTER TABLE ONLY public."Diseño_App"
    ADD CONSTRAINT "Diseño_App_pkey" PRIMARY KEY ("ID_Diseño_App");
 J   ALTER TABLE ONLY public."Diseño_App" DROP CONSTRAINT "Diseño_App_pkey";
       public            postgres    false    216            P           2606    16427    Login Login_pkey 
   CONSTRAINT     Z   ALTER TABLE ONLY public."Login"
    ADD CONSTRAINT "Login_pkey" PRIMARY KEY ("ID_Login");
 >   ALTER TABLE ONLY public."Login" DROP CONSTRAINT "Login_pkey";
       public            postgres    false    219            \           2606    16479 "   Numero_PedidoC Numero_PedidoC_pkey 
   CONSTRAINT     t   ALTER TABLE ONLY public."Numero_PedidoC"
    ADD CONSTRAINT "Numero_PedidoC_pkey" PRIMARY KEY ("ID_Numero_Pedido");
 P   ALTER TABLE ONLY public."Numero_PedidoC" DROP CONSTRAINT "Numero_PedidoC_pkey";
       public            postgres    false    226            X           2606    16455     Numero_Pedido Numero_Pedido_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."Numero_Pedido"
    ADD CONSTRAINT "Numero_Pedido_pkey" PRIMARY KEY ("ID_Numero_Pedido");
 N   ALTER TABLE ONLY public."Numero_Pedido" DROP CONSTRAINT "Numero_Pedido_pkey";
       public            postgres    false    223            N           2606    16420 !   Operacion Operacion_Registro_pkey 
   CONSTRAINT     x   ALTER TABLE ONLY public."Operacion"
    ADD CONSTRAINT "Operacion_Registro_pkey" PRIMARY KEY ("ID_Operacion_Registro");
 O   ALTER TABLE ONLY public."Operacion" DROP CONSTRAINT "Operacion_Registro_pkey";
       public            postgres    false    218            ^           2606    16486    PedidosC PedidosC_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public."PedidosC"
    ADD CONSTRAINT "PedidosC_pkey" PRIMARY KEY ("ID_Pedidos");
 D   ALTER TABLE ONLY public."PedidosC" DROP CONSTRAINT "PedidosC_pkey";
       public            postgres    false    227            V           2606    16448    Pedidos Pedidos_pkey 
   CONSTRAINT     `   ALTER TABLE ONLY public."Pedidos"
    ADD CONSTRAINT "Pedidos_pkey" PRIMARY KEY ("ID_Pedidos");
 B   ALTER TABLE ONLY public."Pedidos" DROP CONSTRAINT "Pedidos_pkey";
       public            postgres    false    222            L           2606    16413    Registro Registro_pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."Registro"
    ADD CONSTRAINT "Registro_pkey" PRIMARY KEY ("ID_Registro");
 D   ALTER TABLE ONLY public."Registro" DROP CONSTRAINT "Registro_pkey";
       public            postgres    false    217            T           2606    16441    Repartidores Repartidores_pkey 
   CONSTRAINT     m   ALTER TABLE ONLY public."Repartidores"
    ADD CONSTRAINT "Repartidores_pkey" PRIMARY KEY ("ID_Repartidor");
 L   ALTER TABLE ONLY public."Repartidores" DROP CONSTRAINT "Repartidores_pkey";
       public            postgres    false    221            �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �      �      x������ � �     