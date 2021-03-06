PGDMP                          z        
   codingzone    14.1    14.1 D    <           0    0    ENCODING    ENCODING     #   SET client_encoding = 'SQL_ASCII';
                      false            =           0    0 
   STDSTRINGS 
   STDSTRINGS     (   SET standard_conforming_strings = 'on';
                      false            >           0    0 
   SEARCHPATH 
   SEARCHPATH     8   SELECT pg_catalog.set_config('search_path', '', false);
                      false            ?           1262    24576 
   codingzone    DATABASE     g   CREATE DATABASE codingzone WITH TEMPLATE = template0 ENCODING = 'UTF8' LOCALE = 'French_Morocco.1252';
    DROP DATABASE codingzone;
                postgres    false            ?            1259    24602 	   question     TABLE     u   CREATE TABLE public."question " (
    id_question bigint NOT NULL,
    "question " character varying(30) NOT NULL
);
    DROP TABLE public."question ";
       public         heap    postgres    false            ?            1259    24601    question _id_question_seq    SEQUENCE     ?   CREATE SEQUENCE public."question _id_question_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 2   DROP SEQUENCE public."question _id_question_seq";
       public          postgres    false    216            @           0    0    question _id_question_seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."question _id_question_seq" OWNED BY public."question ".id_question;
          public          postgres    false    215            ?            1259    24609    question_answer    TABLE     ?   CREATE TABLE public.question_answer (
    id bigint NOT NULL,
    answer character varying(30) NOT NULL,
    "isCorrect" boolean NOT NULL
);
 #   DROP TABLE public.question_answer;
       public         heap    postgres    false            ?            1259    24608    question_answer_id_seq    SEQUENCE        CREATE SEQUENCE public.question_answer_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 -   DROP SEQUENCE public.question_answer_id_seq;
       public          postgres    false    218            A           0    0    question_answer_id_seq    SEQUENCE OWNED BY     Q   ALTER SEQUENCE public.question_answer_id_seq OWNED BY public.question_answer.id;
          public          postgres    false    217            ?            1259    24581    staff    TABLE     ?   CREATE TABLE public.staff (
    id_staff bigint NOT NULL,
    firstname_staff character varying(10) NOT NULL,
    lastname_staff character varying(10) NOT NULL,
    email character varying(20) NOT NULL,
    password character varying(20) NOT NULL
);
    DROP TABLE public.staff;
       public         heap    postgres    false            ?            1259    24580    staff_id_staff_seq    SEQUENCE     {   CREATE SEQUENCE public.staff_id_staff_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 )   DROP SEQUENCE public.staff_id_staff_seq;
       public          postgres    false    210            B           0    0    staff_id_staff_seq    SEQUENCE OWNED BY     I   ALTER SEQUENCE public.staff_id_staff_seq OWNED BY public.staff.id_staff;
          public          postgres    false    209            ?            1259    24588    student     TABLE       CREATE TABLE public."student " (
    "id_student " bigint NOT NULL,
    firstname_student character varying(10) NOT NULL,
    lastname_student character varying(10) NOT NULL,
    email_stuff character varying(20) NOT NULL,
    password_stuff character varying(20) NOT NULL
);
    DROP TABLE public."student ";
       public         heap    postgres    false            ?            1259    24587    student _id_student _seq    SEQUENCE     ?   CREATE SEQUENCE public."student _id_student _seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."student _id_student _seq";
       public          postgres    false    212            C           0    0    student _id_student _seq    SEQUENCE OWNED BY     [   ALTER SEQUENCE public."student _id_student _seq" OWNED BY public."student "."id_student ";
          public          postgres    false    211            ?            1259    24595    test    TABLE     ?   CREATE TABLE public.test (
    id_test bigint NOT NULL,
    name_test character varying(10) NOT NULL,
    description character varying(40) NOT NULL,
    id_staff bigint
);
    DROP TABLE public.test;
       public         heap    postgres    false            ?            1259    24679    testStudentAnswer    TABLE     ?   CREATE TABLE public."testStudentAnswer" (
    id bigint NOT NULL,
    id_student bigint NOT NULL,
    id_test bigint NOT NULL,
    id_question bigint NOT NULL
);
 '   DROP TABLE public."testStudentAnswer";
       public         heap    postgres    false            ?            1259    24678    testStudentAnswer_id_seq    SEQUENCE     ?   CREATE SEQUENCE public."testStudentAnswer_id_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 1   DROP SEQUENCE public."testStudentAnswer_id_seq";
       public          postgres    false    224            D           0    0    testStudentAnswer_id_seq    SEQUENCE OWNED BY     Y   ALTER SEQUENCE public."testStudentAnswer_id_seq" OWNED BY public."testStudentAnswer".id;
          public          postgres    false    223            ?            1259    24594    test_id_test_seq    SEQUENCE     y   CREATE SEQUENCE public.test_id_test_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 '   DROP SEQUENCE public.test_id_test_seq;
       public          postgres    false    214            E           0    0    test_id_test_seq    SEQUENCE OWNED BY     E   ALTER SEQUENCE public.test_id_test_seq OWNED BY public.test.id_test;
          public          postgres    false    213            ?            1259    24662    test_question    TABLE     ?   CREATE TABLE public.test_question (
    id bigint NOT NULL,
    id_test bigint NOT NULL,
    id_question bigint NOT NULL,
    score character varying(10) NOT NULL,
    "time" timestamp without time zone NOT NULL
);
 !   DROP TABLE public.test_question;
       public         heap    postgres    false            ?            1259    24661    test_question_id_seq    SEQUENCE     }   CREATE SEQUENCE public.test_question_id_seq
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 +   DROP SEQUENCE public.test_question_id_seq;
       public          postgres    false    222            F           0    0    test_question_id_seq    SEQUENCE OWNED BY     M   ALTER SEQUENCE public.test_question_id_seq OWNED BY public.test_question.id;
          public          postgres    false    221            ?            1259    24645    test_student    TABLE     ?   CREATE TABLE public.test_student (
    "id_testStudent" bigint NOT NULL,
    id_test bigint NOT NULL,
    id_student bigint NOT NULL,
    date date NOT NULL,
    code character varying(10) NOT NULL
);
     DROP TABLE public.test_student;
       public         heap    postgres    false            ?            1259    24644    test_student_id_testStudent_seq    SEQUENCE     ?   CREATE SEQUENCE public."test_student_id_testStudent_seq"
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;
 8   DROP SEQUENCE public."test_student_id_testStudent_seq";
       public          postgres    false    220            G           0    0    test_student_id_testStudent_seq    SEQUENCE OWNED BY     g   ALTER SEQUENCE public."test_student_id_testStudent_seq" OWNED BY public.test_student."id_testStudent";
          public          postgres    false    219            ?           2604    24605    question  id_question    DEFAULT     ?   ALTER TABLE ONLY public."question " ALTER COLUMN id_question SET DEFAULT nextval('public."question _id_question_seq"'::regclass);
 F   ALTER TABLE public."question " ALTER COLUMN id_question DROP DEFAULT;
       public          postgres    false    216    215    216            ?           2604    24612    question_answer id    DEFAULT     x   ALTER TABLE ONLY public.question_answer ALTER COLUMN id SET DEFAULT nextval('public.question_answer_id_seq'::regclass);
 A   ALTER TABLE public.question_answer ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    217    218    218                       2604    24584    staff id_staff    DEFAULT     p   ALTER TABLE ONLY public.staff ALTER COLUMN id_staff SET DEFAULT nextval('public.staff_id_staff_seq'::regclass);
 =   ALTER TABLE public.staff ALTER COLUMN id_staff DROP DEFAULT;
       public          postgres    false    210    209    210            ?           2604    24591    student  id_student     DEFAULT     ?   ALTER TABLE ONLY public."student " ALTER COLUMN "id_student " SET DEFAULT nextval('public."student _id_student _seq"'::regclass);
 G   ALTER TABLE public."student " ALTER COLUMN "id_student " DROP DEFAULT;
       public          postgres    false    211    212    212            ?           2604    24598    test id_test    DEFAULT     l   ALTER TABLE ONLY public.test ALTER COLUMN id_test SET DEFAULT nextval('public.test_id_test_seq'::regclass);
 ;   ALTER TABLE public.test ALTER COLUMN id_test DROP DEFAULT;
       public          postgres    false    214    213    214            ?           2604    24682    testStudentAnswer id    DEFAULT     ?   ALTER TABLE ONLY public."testStudentAnswer" ALTER COLUMN id SET DEFAULT nextval('public."testStudentAnswer_id_seq"'::regclass);
 E   ALTER TABLE public."testStudentAnswer" ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    224    223    224            ?           2604    24665    test_question id    DEFAULT     t   ALTER TABLE ONLY public.test_question ALTER COLUMN id SET DEFAULT nextval('public.test_question_id_seq'::regclass);
 ?   ALTER TABLE public.test_question ALTER COLUMN id DROP DEFAULT;
       public          postgres    false    221    222    222            ?           2604    24648    test_student id_testStudent    DEFAULT     ?   ALTER TABLE ONLY public.test_student ALTER COLUMN "id_testStudent" SET DEFAULT nextval('public."test_student_id_testStudent_seq"'::regclass);
 L   ALTER TABLE public.test_student ALTER COLUMN "id_testStudent" DROP DEFAULT;
       public          postgres    false    219    220    220            1          0    24602 	   question  
   TABLE DATA           ?   COPY public."question " (id_question, "question ") FROM stdin;
    public          postgres    false    216   rO       3          0    24609    question_answer 
   TABLE DATA           B   COPY public.question_answer (id, answer, "isCorrect") FROM stdin;
    public          postgres    false    218   ?O       +          0    24581    staff 
   TABLE DATA           [   COPY public.staff (id_staff, firstname_staff, lastname_staff, email, password) FROM stdin;
    public          postgres    false    210   ?O       -          0    24588    student  
   TABLE DATA           u   COPY public."student " ("id_student ", firstname_student, lastname_student, email_stuff, password_stuff) FROM stdin;
    public          postgres    false    212   ?O       /          0    24595    test 
   TABLE DATA           I   COPY public.test (id_test, name_test, description, id_staff) FROM stdin;
    public          postgres    false    214   ?O       9          0    24679    testStudentAnswer 
   TABLE DATA           S   COPY public."testStudentAnswer" (id, id_student, id_test, id_question) FROM stdin;
    public          postgres    false    224   P       7          0    24662    test_question 
   TABLE DATA           P   COPY public.test_question (id, id_test, id_question, score, "time") FROM stdin;
    public          postgres    false    222    P       5          0    24645    test_student 
   TABLE DATA           Y   COPY public.test_student ("id_testStudent", id_test, id_student, date, code) FROM stdin;
    public          postgres    false    220   =P       H           0    0    question _id_question_seq    SEQUENCE SET     J   SELECT pg_catalog.setval('public."question _id_question_seq"', 1, false);
          public          postgres    false    215            I           0    0    question_answer_id_seq    SEQUENCE SET     E   SELECT pg_catalog.setval('public.question_answer_id_seq', 1, false);
          public          postgres    false    217            J           0    0    staff_id_staff_seq    SEQUENCE SET     A   SELECT pg_catalog.setval('public.staff_id_staff_seq', 1, false);
          public          postgres    false    209            K           0    0    student _id_student _seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."student _id_student _seq"', 1, false);
          public          postgres    false    211            L           0    0    testStudentAnswer_id_seq    SEQUENCE SET     I   SELECT pg_catalog.setval('public."testStudentAnswer_id_seq"', 1, false);
          public          postgres    false    223            M           0    0    test_id_test_seq    SEQUENCE SET     ?   SELECT pg_catalog.setval('public.test_id_test_seq', 1, false);
          public          postgres    false    213            N           0    0    test_question_id_seq    SEQUENCE SET     C   SELECT pg_catalog.setval('public.test_question_id_seq', 1, false);
          public          postgres    false    221            O           0    0    test_student_id_testStudent_seq    SEQUENCE SET     P   SELECT pg_catalog.setval('public."test_student_id_testStudent_seq"', 1, false);
          public          postgres    false    219            ?           2606    24607    question  question _pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."question "
    ADD CONSTRAINT "question _pkey" PRIMARY KEY (id_question);
 F   ALTER TABLE ONLY public."question " DROP CONSTRAINT "question _pkey";
       public            postgres    false    216            ?           2606    24614 $   question_answer question_answer_pkey 
   CONSTRAINT     b   ALTER TABLE ONLY public.question_answer
    ADD CONSTRAINT question_answer_pkey PRIMARY KEY (id);
 N   ALTER TABLE ONLY public.question_answer DROP CONSTRAINT question_answer_pkey;
       public            postgres    false    218            ?           2606    24586    staff staff_pkey 
   CONSTRAINT     T   ALTER TABLE ONLY public.staff
    ADD CONSTRAINT staff_pkey PRIMARY KEY (id_staff);
 :   ALTER TABLE ONLY public.staff DROP CONSTRAINT staff_pkey;
       public            postgres    false    210            ?           2606    24593    student  student _pkey 
   CONSTRAINT     c   ALTER TABLE ONLY public."student "
    ADD CONSTRAINT "student _pkey" PRIMARY KEY ("id_student ");
 D   ALTER TABLE ONLY public."student " DROP CONSTRAINT "student _pkey";
       public            postgres    false    212            ?           2606    24684 (   testStudentAnswer testStudentAnswer_pkey 
   CONSTRAINT     r   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT "testStudentAnswer_pkey" PRIMARY KEY (id_student);
 V   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT "testStudentAnswer_pkey";
       public            postgres    false    224            ?           2606    24600    test test_pkey 
   CONSTRAINT     Q   ALTER TABLE ONLY public.test
    ADD CONSTRAINT test_pkey PRIMARY KEY (id_test);
 8   ALTER TABLE ONLY public.test DROP CONSTRAINT test_pkey;
       public            postgres    false    214            ?           2606    24667     test_question test_question_pkey 
   CONSTRAINT     g   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT test_question_pkey PRIMARY KEY (id_question);
 J   ALTER TABLE ONLY public.test_question DROP CONSTRAINT test_question_pkey;
       public            postgres    false    222            ?           2606    24650    test_student test_student_pkey 
   CONSTRAINT     j   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT test_student_pkey PRIMARY KEY ("id_testStudent");
 H   ALTER TABLE ONLY public.test_student DROP CONSTRAINT test_student_pkey;
       public            postgres    false    220            ?           1259    24620    fki_id_staff    INDEX     A   CREATE INDEX fki_id_staff ON public.test USING btree (id_staff);
     DROP INDEX public.fki_id_staff;
       public            postgres    false    214            ?           2606    24685    testStudentAnswer id    FK CONSTRAINT     ?   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT id FOREIGN KEY (id) REFERENCES public.test_student("id_testStudent") ON UPDATE CASCADE ON DELETE CASCADE;
 @   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT id;
       public          postgres    false    224    220    3219            ?           2606    24673    test_question id_question    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT id_question FOREIGN KEY (id_question) REFERENCES public."question "(id_question) ON UPDATE CASCADE ON DELETE CASCADE;
 C   ALTER TABLE ONLY public.test_question DROP CONSTRAINT id_question;
       public          postgres    false    222    3215    216            ?           2606    24690    testStudentAnswer id_question    FK CONSTRAINT     ?   ALTER TABLE ONLY public."testStudentAnswer"
    ADD CONSTRAINT id_question FOREIGN KEY (id_question) REFERENCES public."question "(id_question) ON UPDATE CASCADE ON DELETE CASCADE;
 I   ALTER TABLE ONLY public."testStudentAnswer" DROP CONSTRAINT id_question;
       public          postgres    false    224    216    3215            ?           2606    24615    test id_staff    FK CONSTRAINT     }   ALTER TABLE ONLY public.test
    ADD CONSTRAINT id_staff FOREIGN KEY (id_staff) REFERENCES public.staff(id_staff) NOT VALID;
 7   ALTER TABLE ONLY public.test DROP CONSTRAINT id_staff;
       public          postgres    false    214    210    3208            ?           2606    24656    test_student id_student    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT id_student FOREIGN KEY (id_student) REFERENCES public."student "("id_student ");
 A   ALTER TABLE ONLY public.test_student DROP CONSTRAINT id_student;
       public          postgres    false    220    212    3210            ?           2606    24651    test_student id_test    FK CONSTRAINT     w   ALTER TABLE ONLY public.test_student
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test);
 >   ALTER TABLE ONLY public.test_student DROP CONSTRAINT id_test;
       public          postgres    false    3213    214    220            ?           2606    24668    test_question id_test    FK CONSTRAINT     ?   ALTER TABLE ONLY public.test_question
    ADD CONSTRAINT id_test FOREIGN KEY (id_test) REFERENCES public.test(id_test) ON UPDATE CASCADE ON DELETE CASCADE;
 ?   ALTER TABLE ONLY public.test_question DROP CONSTRAINT id_test;
       public          postgres    false    214    222    3213            1      x?????? ? ?      3      x?????? ? ?      +      x?????? ? ?      -      x?????? ? ?      /      x?????? ? ?      9      x?????? ? ?      7      x?????? ? ?      5      x?????? ? ?     