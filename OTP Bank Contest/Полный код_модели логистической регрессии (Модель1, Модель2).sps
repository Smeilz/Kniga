﻿* Encoding: UTF-8.
* Открываем обучающий набор данных.
GET 
  FILE='C:\Trees\Конкурс ОТП Банк\Обучающий набор.sav'. 
DATASET NAME Наборданных1 WINDOW=FRONT.

* Выполняем категоризацию количественных переменных.
/* Node 1 */.
DO IF (VALUE(AGE) LE 28).
COMPUTE AGEchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(AGE) OR (VALUE(AGE) GT 28  AND  VALUE(AGE) LE 43)).
COMPUTE AGEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(AGE) GT 43  AND  VALUE(AGE) LE 52).
COMPUTE AGEchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(AGE) GT 52  AND  VALUE(AGE) LE 57).
COMPUTE AGEchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(AGE) GT 57).
COMPUTE AGEchaid = 5.
END IF.

/* Node 1 */.
DO IF (SYSMIS(CHILD_TOTAL) OR (VALUE(CHILD_TOTAL) LE 2)).
COMPUTE CHILD_TOTALchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(CHILD_TOTAL) GT 2).
COMPUTE CHILD_TOTALchaid = 2.
END IF.

/* Node 1 */.
DO IF (VALUE(PERSONAL_INCOME) LE 7900).
COMPUTE PERSONAL_INCOMEchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(PERSONAL_INCOME) GT 7900  AND  VALUE(PERSONAL_INCOME) LE 11900).
COMPUTE PERSONAL_INCOMEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(PERSONAL_INCOME) GT 11900  AND  VALUE(PERSONAL_INCOME) LE 14000).
COMPUTE PERSONAL_INCOMEchaid = 3.
END IF.

/* Node 4 */.
DO IF (SYSMIS(PERSONAL_INCOME) OR (VALUE(PERSONAL_INCOME) GT 14000  AND  VALUE(PERSONAL_INCOME) LE 24800)).
COMPUTE PERSONAL_INCOMEchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(PERSONAL_INCOME) GT 24800).
COMPUTE PERSONAL_INCOMEchaid = 5.
END IF.

/* Node 1 */.
DO IF (VALUE(TERM) LE 5).
COMPUTE TERMchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(TERM) OR (VALUE(TERM) GT 5  AND  VALUE(TERM) LE 6)).
COMPUTE TERMchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(TERM) GT 6  AND  VALUE(TERM) LE 11).
COMPUTE TERMchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(TERM) GT 11).
COMPUTE TERMchaid = 4.
END IF.

/* Node 1 */.
DO IF (SYSMIS(FST_PAYMENT) OR (VALUE(FST_PAYMENT) LE 1500)).
COMPUTE FST_PAYMENTchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(FST_PAYMENT) GT 1500  AND  VALUE(FST_PAYMENT) LE 4995).
COMPUTE FST_PAYMENTchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(FST_PAYMENT) GT 4995).
COMPUTE FST_PAYMENTchaid = 3.
END IF.

/* Node 1 */.
DO IF (SYSMIS(FACT_LIVING_TERM) OR (VALUE(FACT_LIVING_TERM) LE 81)).
COMPUTE FACT_LIVING_TERMchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(FACT_LIVING_TERM) GT 81  AND  VALUE(FACT_LIVING_TERM) LE 227).
COMPUTE FACT_LIVING_TERMchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(FACT_LIVING_TERM) GT 227).
COMPUTE FACT_LIVING_TERMchaid = 3.
END IF.

/* Node 1 */.
DO IF (VALUE(WORK_TIME) LE 18).
COMPUTE WORK_TIMEchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(WORK_TIME) GT 18  AND  VALUE(WORK_TIME) LE 36).
COMPUTE WORK_TIMEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(WORK_TIME) GT 36  AND  VALUE(WORK_TIME) LE 76).
COMPUTE WORK_TIMEchaid = 3.
END IF.

/* Node 4 */.
DO IF (SYSMIS(WORK_TIME) OR (VALUE(WORK_TIME) GT 76)).
COMPUTE WORK_TIMEchaid = 4.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_NUM_PAYM) OR (VALUE(LOAN_NUM_PAYM) LE 10)).
COMPUTE LOAN_NUM_PAYMchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_NUM_PAYM) GT 10).
COMPUTE LOAN_NUM_PAYMchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_DLQ_NUM) OR (VALUE(LOAN_DLQ_NUM) LE 0)).
COMPUTE LOAN_DLQ_NUMchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_DLQ_NUM) GT 0).
COMPUTE LOAN_DLQ_NUMchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_MAX_DLQ_AMT) OR (VALUE(LOAN_MAX_DLQ_AMT) LE 0)).
COMPUTE LOAN_MAX_DLQ_AMTchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_MAX_DLQ_AMT) GT 0).
COMPUTE LOAN_MAX_DLQ_AMTchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_NUM_TOTAL) OR (VALUE(LOAN_NUM_TOTAL) LE 1)).
COMPUTE LOAN_NUM_TOTALchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_NUM_TOTAL) GT 1).
COMPUTE LOAN_NUM_TOTALchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_NUM_CLOSED) OR (VALUE(LOAN_NUM_CLOSED) LE 0)).
COMPUTE LOAN_NUM_CLOSEDchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_NUM_CLOSED) GT 0  AND  VALUE(LOAN_NUM_CLOSED) LE 1).
COMPUTE LOAN_NUM_CLOSEDchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(LOAN_NUM_CLOSED) GT 1).
COMPUTE LOAN_NUM_CLOSEDchaid = 3.
END IF.

/* Node 1 */.
DO IF (SYSMIS(CREDIT) OR (VALUE(CREDIT) LE 7291.85)).
COMPUTE CREDITchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(CREDIT) GT 7291.85  AND  VALUE(CREDIT) LE 9427).
COMPUTE CREDITchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(CREDIT) GT 9427  AND  VALUE(CREDIT) LE 14169.1).
COMPUTE CREDITchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(CREDIT) GT 14169.1  AND  VALUE(CREDIT) LE 27449).
COMPUTE CREDITchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(CREDIT) GT 27449).
COMPUTE CREDITchaid = 5.
END IF.

* Выполняем перегруппировку категориальных переменных.
/* Node 1 */.
DO IF (SYSMIS(EDUCATION) OR (VALUE(EDUCATION) LE 3)).
COMPUTE EDUCATIONchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(EDUCATION) GT 3  AND  VALUE(EDUCATION) LE 4).
COMPUTE EDUCATIONchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(EDUCATION) GT 4).
COMPUTE EDUCATIONchaid = 3.
END IF.

/* Node 1 */.
DO IF (SYSMIS(GEN_INDUSTRY) OR VALUE(GEN_INDUSTRY) NE 18  AND  VALUE(GEN_INDUSTRY) NE 4  AND  VALUE(GEN_INDUSTRY) NE 1  AND  VALUE(GEN_INDUSTRY) NE 17  AND  VALUE(GEN_INDUSTRY) NE 25  AND  VALUE(GEN_INDUSTRY) NE 26  AND  VALUE(GEN_INDUSTRY) NE 2  AND
  VALUE(GEN_INDUSTRY) NE 30  AND  VALUE(GEN_INDUSTRY) NE 14  AND  VALUE(GEN_INDUSTRY) NE 12  AND  VALUE(GEN_INDUSTRY) NE 8  AND  VALUE(GEN_INDUSTRY) NE 31  AND  VALUE(GEN_INDUSTRY) NE 16  AND  VALUE(GEN_INDUSTRY) NE 23  AND  VALUE(GEN_INDUSTRY) NE 32
  AND  VALUE(GEN_INDUSTRY) NE 29  AND  VALUE(GEN_INDUSTRY) NE 20  AND  VALUE(GEN_INDUSTRY) NE 7  AND  VALUE(GEN_INDUSTRY) NE 6  AND  VALUE(GEN_INDUSTRY) NE 13  AND  VALUE(GEN_INDUSTRY) NE 28  AND  VALUE(GEN_INDUSTRY) NE 10).
COMPUTE GEN_INDUSTRYchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 18 OR VALUE(GEN_INDUSTRY) EQ 17 OR VALUE(GEN_INDUSTRY) EQ 25 OR VALUE(GEN_INDUSTRY) EQ 26 OR VALUE(GEN_INDUSTRY) EQ 30 OR VALUE(GEN_INDUSTRY) EQ 20 OR VALUE(GEN_INDUSTRY) EQ 13 OR VALUE(GEN_INDUSTRY) EQ 28).
COMPUTE GEN_INDUSTRYchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 4 OR VALUE(GEN_INDUSTRY) EQ 2 OR VALUE(GEN_INDUSTRY) EQ 14 OR VALUE(GEN_INDUSTRY) EQ 8 OR VALUE(GEN_INDUSTRY) EQ 29 OR VALUE(GEN_INDUSTRY) EQ 7 OR VALUE(GEN_INDUSTRY) EQ 6).
COMPUTE GEN_INDUSTRYchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 1 OR VALUE(GEN_INDUSTRY) EQ 16 OR VALUE(GEN_INDUSTRY) EQ 23 OR VALUE(GEN_INDUSTRY) EQ 32 OR VALUE(GEN_INDUSTRY) EQ 10).
COMPUTE GEN_INDUSTRYchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 12 OR VALUE(GEN_INDUSTRY) EQ 31).
COMPUTE GEN_INDUSTRYchaid = 5.
END IF.

/* Node 1 */.
DO IF (VALUE(GEN_TITLE) EQ 8 OR VALUE(GEN_TITLE) EQ 12 OR VALUE(GEN_TITLE) EQ 7 OR VALUE(GEN_TITLE) EQ 3).
COMPUTE GEN_TITLEchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(GEN_TITLE) OR VALUE(GEN_TITLE) NE 8  AND  VALUE(GEN_TITLE) NE 12  AND  VALUE(GEN_TITLE) NE 1  AND  VALUE(GEN_TITLE) NE 2  AND  VALUE(GEN_TITLE) NE 5  AND  VALUE(GEN_TITLE) NE 7  AND  VALUE(GEN_TITLE) NE 3  AND  VALUE(GEN_TITLE) NE 9  AND
  VALUE(GEN_TITLE) NE 10  AND  VALUE(GEN_TITLE) NE 6).
COMPUTE GEN_TITLEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(GEN_TITLE) EQ 1).
COMPUTE GEN_TITLEchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(GEN_TITLE) EQ 2 OR VALUE(GEN_TITLE) EQ 5 OR VALUE(GEN_TITLE) EQ 9 OR VALUE(GEN_TITLE) EQ 10 OR VALUE(GEN_TITLE) EQ 6).
COMPUTE GEN_TITLEchaid = 4.
END IF.

/* Node 1 */.
DO IF (SYSMIS(JOB_DIR) OR VALUE(JOB_DIR) NE 9  AND  VALUE(JOB_DIR) NE 1  AND  VALUE(JOB_DIR) NE 11  AND  VALUE(JOB_DIR) NE 7).
COMPUTE JOB_DIRchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(JOB_DIR) EQ 9 OR VALUE(JOB_DIR) EQ 11 OR VALUE(JOB_DIR) EQ 7).
COMPUTE JOB_DIRchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(JOB_DIR) EQ 1).
COMPUTE JOB_DIRchaid = 3.
END IF.

/* Node 1 */.
DO IF (VALUE(FAMILY_INCOME) LE 2).
COMPUTE FAMILY_INCOMEchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(FAMILY_INCOME) OR (VALUE(FAMILY_INCOME) GT 2  AND  VALUE(FAMILY_INCOME) LE 3)).
COMPUTE FAMILY_INCOMEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(FAMILY_INCOME) GT 3  AND  VALUE(FAMILY_INCOME) LE 4).
COMPUTE FAMILY_INCOMEchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(FAMILY_INCOME) GT 4).
COMPUTE FAMILY_INCOMEchaid = 4.
END IF.

/* Node 1 */.
DO IF (VALUE(REGION_NM) EQ 3 OR VALUE(REGION_NM) EQ 4 OR VALUE(REGION_NM) EQ 7 OR VALUE(REGION_NM) EQ 2 OR VALUE(REGION_NM) EQ 8).
COMPUTE REGION_NMchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(REGION_NM) OR VALUE(REGION_NM) NE 3  AND  VALUE(REGION_NM) NE 11  AND  VALUE(REGION_NM) NE 4  AND  VALUE(REGION_NM) NE 7  AND  VALUE(REGION_NM) NE 6  AND  VALUE(REGION_NM) NE 2  AND  VALUE(REGION_NM) NE 8).
COMPUTE REGION_NMchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(REGION_NM) EQ 11).
COMPUTE REGION_NMchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(REGION_NM) EQ 6).
COMPUTE REGION_NMchaid = 4.
END IF.

/* Node 1 */.
DO IF (VALUE(MARITAL_STATUS) EQ 3).
COMPUTE MARITAL_STATUSchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(MARITAL_STATUS) OR VALUE(MARITAL_STATUS) NE 3  AND  VALUE(MARITAL_STATUS) NE 4  AND  VALUE(MARITAL_STATUS) NE 2).
COMPUTE MARITAL_STATUSchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(MARITAL_STATUS) EQ 4 OR VALUE(MARITAL_STATUS) EQ 2).
COMPUTE MARITAL_STATUSchaid = 3.
END IF.

/* Node 1 */.
DO IF (VALUE(ORG_TP_STATE) EQ 2).
COMPUTE ORG_TP_STATEchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(ORG_TP_STATE) EQ 3 OR VALUE(ORG_TP_STATE) EQ 5).
COMPUTE ORG_TP_STATEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(ORG_TP_STATE) EQ 1).
COMPUTE ORG_TP_STATEchaid = 3.
END IF.

/* Node 4 */.
DO IF (SYSMIS(ORG_TP_STATE) OR VALUE(ORG_TP_STATE) NE 2  AND  VALUE(ORG_TP_STATE) NE 3  AND  VALUE(ORG_TP_STATE) NE 1  AND  VALUE(ORG_TP_STATE) NE 5).
COMPUTE ORG_TP_STATEchaid = 4.
END IF.

* Задаем уровень измерения переменных.
VARIABLE LEVEL 
AGEchaid (NOMINAL)
CHILD_TOTALchaid (NOMINAL)
PERSONAL_INCOMEchaid (NOMINAL)
TERMchaid (NOMINAL)
FST_PAYMENTchaid (NOMINAL)
FACT_LIVING_TERMchaid (NOMINAL)
WORK_TIMEchaid (NOMINAL)
LOAN_NUM_PAYMchaid (NOMINAL)
LOAN_DLQ_NUMchaid (NOMINAL)
LOAN_MAX_DLQ_AMTchaid (NOMINAL)
LOAN_NUM_TOTALchaid (NOMINAL)
LOAN_NUM_CLOSEDchaid (NOMINAL)
CREDITchaid (NOMINAL)
EDUCATIONchaid (NOMINAL)
GEN_INDUSTRYchaid (NOMINAL)
GEN_TITLEchaid (NOMINAL)
JOB_DIRchaid (NOMINAL)
FAMILY_INCOMEchaid (NOMINAL)
REGION_NMchaid (NOMINAL)
MARITAL_STATUSchaid (NOMINAL)
ORG_TP_STATEchaid (NOMINAL).

* Задаем метки переменных.
VARIABLE LABELS 
AGEchaid ‘Возраст клиента (CHAID 3, 500, 250)’
CHILD_TOTALchaid ‘Количество детей клиента (CHAID 3, 500, 250)’
PERSONAL_INCOMEchaid ‘Личный доход клиента (CHAID 3, 500, 250)’
TERMchaid ‘Срок кредита (CHAID 3, 500, 250)’
FST_PAYMENTchaid ‘Первоначальный взнос (CHAID 3, 60, 30, 5)’
FACT_LIVING_TERMchaid ‘Количество месяцев проживания по месту фактического пребывания (CHAID 3, 500, 250, 5)’
WORK_TIMEchaid ‘Время работы на текущем месте (CHAID 3, 500, 250, 5)’
LOAN_NUM_PAYMchaid ‘Количество платежей, которые сделал клиент (CHAID 3, 5000, 2500)’
LOAN_DLQ_NUMchaid ‘Количество просрочек, допущенных клиентом (CHAID 3, 500, 250)’
LOAN_MAX_DLQ_AMTchaid ‘Максимальная сумма просрочки (CHAID 3, 500, 250)’
LOAN_NUM_TOTALchaid ‘Количество ссуд клиента (CHAID 3, 500, 250)’
LOAN_NUM_CLOSEDchaid ‘Количество погашенных ссуд клиента (CHAID 3, 500, 250)’
CREDITchaid ‘Сумма последнего кредита (CHAID 3, 100, 50)’
EDUCATIONchaid ‘Образование (CHAID 3, 500, 250)’
GEN_INDUSTRYchaid ‘Отрасль работы клиента (CHAID 3, 500, 250)’
GEN_TITLEchaid ‘Должность (CHAID 3, 500, 250)’
JOB_DIRchaid ‘Направление деятельности внутри компании (CHAID 3, 500, 250)’
FAMILY_INCOMEchaid ‘Семейный доход (CHAID 3, 500, 250)’
REGION_NMchaid ‘Регион РФ (CHAID 3, 500, 250)’
MARITAL_STATUSchaid ‘Семейное положение (CHAID 3, 500, 250)’
ORG_TP_STATEchaid ‘Форма собственности компании (CHAID 3, 500, 250)’.

* Задаем метки значений переменных.
VALUE LABELS  
AGEchaid
1 'моложе 29 лет' 
2 'от 29 до 43 лет'
3 'от 44 до 52 лет' 
4 'от 53 до 57 лет'
5 'старше 57 лет'. 

VALUE LABELS
CHILD_TOTALchaid
1 '1 ребенок' 
2 '2 ребенка и больше'.

VALUE LABELS  
PERSONAL_INCOMEchaid
1 'менее 7900' 
2 'от 7900 до 11900'
3 'от 11900 до 14000' 
4 'от 14000 до 24800'
5 'более 24800'.

VALUE LABELS  
TERMchaid
1 '5 лет и меньше' 
2 '6 лет'
3 'от 7 до 11 лет' 
4 '12 лет и больше'.

VALUE LABELS  
FST_PAYMENTchaid
1 'менее 1500' 
2 'от 1500 до 4995'
3 'более 4995'.

VALUE LABELS  
FACT_LIVING_TERMchaid
1 'менее 82' 
2 'от 82 до 227'
3 'больше 227'.

VALUE LABELS  
WORK_TIMEchaid
1 'менее 19' 
2 'от 19 до 36'
3 'от 37 до 76'
4 'больше 76'.

VALUE LABELS  
LOAN_NUM_PAYMchaid
1 '10 и меньше' 
2 'больше 10'.

VALUE LABELS  
LOAN_DLQ_NUMchaid
1 'нет просрочек' 
2 '1 просрочка и более'.

VALUE LABELS  
LOAN_MAX_DLQ_AMTchaid
1 'нет данных о максимальной сумме просрочки' 
2 'есть данные о максимальной сумме просрочки'.

VALUE LABELS  
LOAN_NUM_TOTALchaid
1 '1 ссуда' 
2 '2 ссуды и более'.

VALUE LABELS  
LOAN_NUM_CLOSEDchaid
1 'нет погашенных ссуд' 
2 '1 погашенная ссуда'
3 '2 погашенных ссуды и более'.

VALUE LABELS  
CREDITchaid
1 'менее 7292' 
2 'от 7293 от 9427'
3 'от 9428 до 14169' 
4 'от 14170 от 27449'
5 'более 27449'.

VALUE LABELS  
EDUCATIONchaid
1 'неполн среднее, среднее, среднее спец' 
2 'неоконч высшее'
3 'высшее или несколько высших'.

VALUE LABELS  
GEN_INDUSTRYchaid
1 'обр-ние, металлургия, госслужба, здравоохр, строит-во,с/х,СМИ, тур' 
2 'рестораны/питан, развлеч, торг, трансп-т, недвиж-ть, упр. компания'
3 'банки, финансы, нефтегаз пром-ть, комм. хоз-во, химия/фарм, IT'
4 'HR, страхован, юр. услуги, маркетинг, пропуск'
5 'наука, энергетика'.

VALUE LABELS  
GEN_TITLEchaid
1 'рабочий, служащий, работник сферы услуг, высоквалиф. спец-т' 
2 'специалист, рук-ль средн. звена, другое'
3 'пропуск'
4 'военнослуж, ИП, рук-ль высш. звена, рук-ль низш. звена, партнер'.

VALUE LABELS  
JOB_DIRchaid
1 'участие в осн. деят-ти, СБ, бух, финансы, кадры, секрет, тех перс' 
2 'снабжен и сбыт, юр. служба, реклама и маркетинг'
3 'пропуск'.

VALUE LABELS  
FAMILY_INCOMEchaid
1 'до 10000 рублей' 
2 'от 10000 до 20000 рублей'
3 'от 20000 до 50000 рублей'
4 'свыше 50000 рублей'.

VALUE LABELS  
REGION_NMchaid
1 'Дальневост, Зап-Сиб, Сев-Зап, Вост-Сиб, Урал' 
2 'Поволжский, Центральный 2, Центральный 1, Южный'
3 'Центральный'
4 'Приволжский'.

VALUE LABELS  
MARITAL_STATUSchaid
1 'не состоял в браке' 
2 'состою в браке, вдовец/вдова'
3 'разведен, гражданский брак'.

VALUE LABELS  
ORG_TP_STATEchaid
1 'гос. комп./учреж.' 
2 'ИП, частн. компания с иностр. капиталом'
3 'пропуск'
4 'частн. компания, некомм. орг-ция'.
EXECUTE.

* Строю модели логистической регрессии.
* Encoding: UTF-8.
LOGISTIC REGRESSION VARIABLES TARGET
  /METHOD=ENTER 
AGE CHILD_TOTAL EDUCATION MARITAL_STATUS GEN_INDUSTRY 
GEN_TITLE ORG_TP_STATE JOB_DIR FAMILY_INCOME PERSONAL_INCOME REGION_NM CREDIT TERM FST_PAYMENT GPF_DOCUMENT_FL FACT_LIVING_TERM WORK_TIME FACT_PHONE_FL LOAN_NUM_TOTAL 
LOAN_NUM_CLOSED LOAN_NUM_PAYM LOAN_DLQ_NUM LOAN_MAX_DLQ_AMT 
  /CONTRAST (EDUCATION)=Indicator
  /CONTRAST (MARITAL_STATUS)=Indicator
  /CONTRAST (GEN_INDUSTRY)=Indicator
  /CONTRAST (GEN_TITLE)=Indicator
  /CONTRAST (ORG_TP_STATE)=Indicator
  /CONTRAST (JOB_DIR)=Indicator
  /CONTRAST (FAMILY_INCOME)=Indicator
  /CONTRAST (REGION_NM)=Indicator
  /CONTRAST (GPF_DOCUMENT_FL)=Indicator
  /CONTRAST (FACT_PHONE_FL)=Indicator
  /SAVE=PRED
  /OUTFILE= MODEL ('C:\Trees\Конкурс ОТП Банк\Модель логистической регрессии (исходные предикторы).xml'). 

LOGISTIC REGRESSION VARIABLES TARGET
  /METHOD=ENTER 
AGEchaid CHILD_TOTALchaid EDUCATIONchaid MARITAL_STATUSchaid
GEN_INDUSTRYchaid GEN_TITLEchaid ORG_TP_STATEchaid JOB_DIRchaid 
FAMILY_INCOMEchaid PERSONAL_INCOMEchaid REGION_NMchaid CREDITchaid TERMchaid FST_PAYMENTchaid GPF_DOCUMENT_FL FACT_LIVING_TERMchaid WORK_TIMEchaid FACT_PHONE_FL LOAN_NUM_TOTALchaid LOAN_NUM_CLOSEDchaid LOAN_NUM_PAYMchaid 
LOAN_DLQ_NUMchaid LOAN_MAX_DLQ_AMTchaid 
  /CONTRAST (AGEchaid)=Indicator
  /CONTRAST (CHILD_TOTALchaid)=Indicator
  /CONTRAST (EDUCATIONchaid)=Indicator
  /CONTRAST (MARITAL_STATUSchaid)=Indicator
  /CONTRAST (GEN_INDUSTRYchaid)=Indicator
  /CONTRAST (GEN_TITLEchaid)=Indicator
  /CONTRAST (ORG_TP_STATEchaid)=Indicator
  /CONTRAST (JOB_DIRchaid)=Indicator
  /CONTRAST (FAMILY_INCOMEchaid)=Indicator
  /CONTRAST (PERSONAL_INCOMEchaid)=Indicator
  /CONTRAST (REGION_NMchaid)=Indicator
  /CONTRAST (CREDITchaid)=Indicator
  /CONTRAST (TERMchaid)=Indicator
  /CONTRAST (FST_PAYMENTchaid)=Indicator
  /CONTRAST (GPF_DOCUMENT_FL)=Indicator
  /CONTRAST (FACT_LIVING_TERMchaid)=Indicator
  /CONTRAST (WORK_TIMEchaid)=Indicator
  /CONTRAST (FACT_PHONE_FL)=Indicator
  /CONTRAST (LOAN_NUM_TOTALchaid)=Indicator
  /CONTRAST (LOAN_NUM_CLOSEDchaid)=Indicator
  /CONTRAST (LOAN_NUM_PAYMchaid)=Indicator
  /CONTRAST (LOAN_DLQ_NUMchaid)=Indicator
  /CONTRAST (LOAN_MAX_DLQ_AMTchaid)=Indicator
  /SAVE=PRED
  /OUTFILE= MODEL ('C:\Trees\Конкурс ОТП Банк\Модель логистической регрессии (предикторы, преобразованные с помощью CHAID).xml'). 

VARIABLE LABELS 
PRE_1 ‘Модель логистической регрессии (исходные предикторы)’
PRE_2 ‘Модель логистической регрессии (предикторы, преобразованные с помощью CHAID)’.

* Строим ROC-кривые моделей логистической регрессии для обучающего набора.
ROC PRE_1 PRE_2 BY TARGET (1)
  /PLOT=CURVE(REFERENCE) 
  /PRINT=SE.

*Открываем тестовый набор.
GET 
  FILE='C:\Trees\Конкурс ОТП Банк\Тестовый набор.sav'. 
DATASET NAME Наборданных2 WINDOW=FRONT.

* Выполняем категоризацию количественных переменных.
/* Node 1 */.
DO IF (VALUE(AGE) LE 28).
COMPUTE AGEchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(AGE) OR (VALUE(AGE) GT 28  AND  VALUE(AGE) LE 43)).
COMPUTE AGEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(AGE) GT 43  AND  VALUE(AGE) LE 52).
COMPUTE AGEchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(AGE) GT 52  AND  VALUE(AGE) LE 57).
COMPUTE AGEchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(AGE) GT 57).
COMPUTE AGEchaid = 5.
END IF.

/* Node 1 */.
DO IF (SYSMIS(CHILD_TOTAL) OR (VALUE(CHILD_TOTAL) LE 2)).
COMPUTE CHILD_TOTALchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(CHILD_TOTAL) GT 2).
COMPUTE CHILD_TOTALchaid = 2.
END IF.

/* Node 1 */.
DO IF (VALUE(PERSONAL_INCOME) LE 7900).
COMPUTE PERSONAL_INCOMEchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(PERSONAL_INCOME) GT 7900  AND  VALUE(PERSONAL_INCOME) LE 11900).
COMPUTE PERSONAL_INCOMEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(PERSONAL_INCOME) GT 11900  AND  VALUE(PERSONAL_INCOME) LE 14000).
COMPUTE PERSONAL_INCOMEchaid = 3.
END IF.

/* Node 4 */.
DO IF (SYSMIS(PERSONAL_INCOME) OR (VALUE(PERSONAL_INCOME) GT 14000  AND  VALUE(PERSONAL_INCOME) LE 24800)).
COMPUTE PERSONAL_INCOMEchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(PERSONAL_INCOME) GT 24800).
COMPUTE PERSONAL_INCOMEchaid = 5.
END IF.

/* Node 1 */.
DO IF (VALUE(TERM) LE 5).
COMPUTE TERMchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(TERM) OR (VALUE(TERM) GT 5  AND  VALUE(TERM) LE 6)).
COMPUTE TERMchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(TERM) GT 6  AND  VALUE(TERM) LE 11).
COMPUTE TERMchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(TERM) GT 11).
COMPUTE TERMchaid = 4.
END IF.

/* Node 1 */.
DO IF (SYSMIS(FST_PAYMENT) OR (VALUE(FST_PAYMENT) LE 1500)).
COMPUTE FST_PAYMENTchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(FST_PAYMENT) GT 1500  AND  VALUE(FST_PAYMENT) LE 4995).
COMPUTE FST_PAYMENTchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(FST_PAYMENT) GT 4995).
COMPUTE FST_PAYMENTchaid = 3.
END IF.

/* Node 1 */.
DO IF (SYSMIS(FACT_LIVING_TERM) OR (VALUE(FACT_LIVING_TERM) LE 81)).
COMPUTE FACT_LIVING_TERMchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(FACT_LIVING_TERM) GT 81  AND  VALUE(FACT_LIVING_TERM) LE 227).
COMPUTE FACT_LIVING_TERMchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(FACT_LIVING_TERM) GT 227).
COMPUTE FACT_LIVING_TERMchaid = 3.
END IF.

/* Node 1 */.
DO IF (VALUE(WORK_TIME) LE 18).
COMPUTE WORK_TIMEchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(WORK_TIME) GT 18  AND  VALUE(WORK_TIME) LE 36).
COMPUTE WORK_TIMEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(WORK_TIME) GT 36  AND  VALUE(WORK_TIME) LE 76).
COMPUTE WORK_TIMEchaid = 3.
END IF.

/* Node 4 */.
DO IF (SYSMIS(WORK_TIME) OR (VALUE(WORK_TIME) GT 76)).
COMPUTE WORK_TIMEchaid = 4.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_NUM_PAYM) OR (VALUE(LOAN_NUM_PAYM) LE 10)).
COMPUTE LOAN_NUM_PAYMchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_NUM_PAYM) GT 10).
COMPUTE LOAN_NUM_PAYMchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_DLQ_NUM) OR (VALUE(LOAN_DLQ_NUM) LE 0)).
COMPUTE LOAN_DLQ_NUMchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_DLQ_NUM) GT 0).
COMPUTE LOAN_DLQ_NUMchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_MAX_DLQ_AMT) OR (VALUE(LOAN_MAX_DLQ_AMT) LE 0)).
COMPUTE LOAN_MAX_DLQ_AMTchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_MAX_DLQ_AMT) GT 0).
COMPUTE LOAN_MAX_DLQ_AMTchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_NUM_TOTAL) OR (VALUE(LOAN_NUM_TOTAL) LE 1)).
COMPUTE LOAN_NUM_TOTALchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_NUM_TOTAL) GT 1).
COMPUTE LOAN_NUM_TOTALchaid = 2.
END IF.

/* Node 1 */.
DO IF (SYSMIS(LOAN_NUM_CLOSED) OR (VALUE(LOAN_NUM_CLOSED) LE 0)).
COMPUTE LOAN_NUM_CLOSEDchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(LOAN_NUM_CLOSED) GT 0  AND  VALUE(LOAN_NUM_CLOSED) LE 1).
COMPUTE LOAN_NUM_CLOSEDchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(LOAN_NUM_CLOSED) GT 1).
COMPUTE LOAN_NUM_CLOSEDchaid = 3.
END IF.

/* Node 1 */.
DO IF (SYSMIS(CREDIT) OR (VALUE(CREDIT) LE 7291.85)).
COMPUTE CREDITchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(CREDIT) GT 7291.85  AND  VALUE(CREDIT) LE 9427).
COMPUTE CREDITchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(CREDIT) GT 9427  AND  VALUE(CREDIT) LE 14169.1).
COMPUTE CREDITchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(CREDIT) GT 14169.1  AND  VALUE(CREDIT) LE 27449).
COMPUTE CREDITchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(CREDIT) GT 27449).
COMPUTE CREDITchaid = 5.
END IF.

* Выполняем перегруппировку категориальных переменных.
/* Node 1 */.
DO IF (SYSMIS(EDUCATION) OR (VALUE(EDUCATION) LE 3)).
COMPUTE EDUCATIONchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(EDUCATION) GT 3  AND  VALUE(EDUCATION) LE 4).
COMPUTE EDUCATIONchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(EDUCATION) GT 4).
COMPUTE EDUCATIONchaid = 3.
END IF.

/* Node 1 */.
DO IF (SYSMIS(GEN_INDUSTRY) OR VALUE(GEN_INDUSTRY) NE 18  AND  VALUE(GEN_INDUSTRY) NE 4  AND  VALUE(GEN_INDUSTRY) NE 1  AND  VALUE(GEN_INDUSTRY) NE 17  AND  VALUE(GEN_INDUSTRY) NE 25  AND  VALUE(GEN_INDUSTRY) NE 26  AND  VALUE(GEN_INDUSTRY) NE 2  AND
  VALUE(GEN_INDUSTRY) NE 30  AND  VALUE(GEN_INDUSTRY) NE 14  AND  VALUE(GEN_INDUSTRY) NE 12  AND  VALUE(GEN_INDUSTRY) NE 8  AND  VALUE(GEN_INDUSTRY) NE 31  AND  VALUE(GEN_INDUSTRY) NE 16  AND  VALUE(GEN_INDUSTRY) NE 23  AND  VALUE(GEN_INDUSTRY) NE 32
  AND  VALUE(GEN_INDUSTRY) NE 29  AND  VALUE(GEN_INDUSTRY) NE 20  AND  VALUE(GEN_INDUSTRY) NE 7  AND  VALUE(GEN_INDUSTRY) NE 6  AND  VALUE(GEN_INDUSTRY) NE 13  AND  VALUE(GEN_INDUSTRY) NE 28  AND  VALUE(GEN_INDUSTRY) NE 10).
COMPUTE GEN_INDUSTRYchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 18 OR VALUE(GEN_INDUSTRY) EQ 17 OR VALUE(GEN_INDUSTRY) EQ 25 OR VALUE(GEN_INDUSTRY) EQ 26 OR VALUE(GEN_INDUSTRY) EQ 30 OR VALUE(GEN_INDUSTRY) EQ 20 OR VALUE(GEN_INDUSTRY) EQ 13 OR VALUE(GEN_INDUSTRY) EQ 28).
COMPUTE GEN_INDUSTRYchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 4 OR VALUE(GEN_INDUSTRY) EQ 2 OR VALUE(GEN_INDUSTRY) EQ 14 OR VALUE(GEN_INDUSTRY) EQ 8 OR VALUE(GEN_INDUSTRY) EQ 29 OR VALUE(GEN_INDUSTRY) EQ 7 OR VALUE(GEN_INDUSTRY) EQ 6).
COMPUTE GEN_INDUSTRYchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 1 OR VALUE(GEN_INDUSTRY) EQ 16 OR VALUE(GEN_INDUSTRY) EQ 23 OR VALUE(GEN_INDUSTRY) EQ 32 OR VALUE(GEN_INDUSTRY) EQ 10).
COMPUTE GEN_INDUSTRYchaid = 4.
END IF.

/* Node 5 */.
DO IF (VALUE(GEN_INDUSTRY) EQ 12 OR VALUE(GEN_INDUSTRY) EQ 31).
COMPUTE GEN_INDUSTRYchaid = 5.
END IF.

/* Node 1 */.
DO IF (VALUE(GEN_TITLE) EQ 8 OR VALUE(GEN_TITLE) EQ 12 OR VALUE(GEN_TITLE) EQ 7 OR VALUE(GEN_TITLE) EQ 3).
COMPUTE GEN_TITLEchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(GEN_TITLE) OR VALUE(GEN_TITLE) NE 8  AND  VALUE(GEN_TITLE) NE 12  AND  VALUE(GEN_TITLE) NE 1  AND  VALUE(GEN_TITLE) NE 2  AND  VALUE(GEN_TITLE) NE 5  AND  VALUE(GEN_TITLE) NE 7  AND  VALUE(GEN_TITLE) NE 3  AND  VALUE(GEN_TITLE) NE 9  AND
  VALUE(GEN_TITLE) NE 10  AND  VALUE(GEN_TITLE) NE 6).
COMPUTE GEN_TITLEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(GEN_TITLE) EQ 1).
COMPUTE GEN_TITLEchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(GEN_TITLE) EQ 2 OR VALUE(GEN_TITLE) EQ 5 OR VALUE(GEN_TITLE) EQ 9 OR VALUE(GEN_TITLE) EQ 10 OR VALUE(GEN_TITLE) EQ 6).
COMPUTE GEN_TITLEchaid = 4.
END IF.

/* Node 1 */.
DO IF (SYSMIS(JOB_DIR) OR VALUE(JOB_DIR) NE 9  AND  VALUE(JOB_DIR) NE 1  AND  VALUE(JOB_DIR) NE 11  AND  VALUE(JOB_DIR) NE 7).
COMPUTE JOB_DIRchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(JOB_DIR) EQ 9 OR VALUE(JOB_DIR) EQ 11 OR VALUE(JOB_DIR) EQ 7).
COMPUTE JOB_DIRchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(JOB_DIR) EQ 1).
COMPUTE JOB_DIRchaid = 3.
END IF.

/* Node 1 */.
DO IF (VALUE(FAMILY_INCOME) LE 2).
COMPUTE FAMILY_INCOMEchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(FAMILY_INCOME) OR (VALUE(FAMILY_INCOME) GT 2  AND  VALUE(FAMILY_INCOME) LE 3)).
COMPUTE FAMILY_INCOMEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(FAMILY_INCOME) GT 3  AND  VALUE(FAMILY_INCOME) LE 4).
COMPUTE FAMILY_INCOMEchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(FAMILY_INCOME) GT 4).
COMPUTE FAMILY_INCOMEchaid = 4.
END IF.

/* Node 1 */.
DO IF (VALUE(REGION_NM) EQ 3 OR VALUE(REGION_NM) EQ 4 OR VALUE(REGION_NM) EQ 7 OR VALUE(REGION_NM) EQ 2 OR VALUE(REGION_NM) EQ 8).
COMPUTE REGION_NMchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(REGION_NM) OR VALUE(REGION_NM) NE 3  AND  VALUE(REGION_NM) NE 11  AND  VALUE(REGION_NM) NE 4  AND  VALUE(REGION_NM) NE 7  AND  VALUE(REGION_NM) NE 6  AND  VALUE(REGION_NM) NE 2  AND  VALUE(REGION_NM) NE 8).
COMPUTE REGION_NMchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(REGION_NM) EQ 11).
COMPUTE REGION_NMchaid = 3.
END IF.

/* Node 4 */.
DO IF (VALUE(REGION_NM) EQ 6).
COMPUTE REGION_NMchaid = 4.
END IF.

/* Node 1 */.
DO IF (VALUE(MARITAL_STATUS) EQ 3).
COMPUTE MARITAL_STATUSchaid = 1.
END IF.

/* Node 2 */.
DO IF (SYSMIS(MARITAL_STATUS) OR VALUE(MARITAL_STATUS) NE 3  AND  VALUE(MARITAL_STATUS) NE 4  AND  VALUE(MARITAL_STATUS) NE 2).
COMPUTE MARITAL_STATUSchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(MARITAL_STATUS) EQ 4 OR VALUE(MARITAL_STATUS) EQ 2).
COMPUTE MARITAL_STATUSchaid = 3.
END IF.

/* Node 1 */.
DO IF (VALUE(ORG_TP_STATE) EQ 2).
COMPUTE ORG_TP_STATEchaid = 1.
END IF.

/* Node 2 */.
DO IF (VALUE(ORG_TP_STATE) EQ 3 OR VALUE(ORG_TP_STATE) EQ 5).
COMPUTE ORG_TP_STATEchaid = 2.
END IF.

/* Node 3 */.
DO IF (VALUE(ORG_TP_STATE) EQ 1).
COMPUTE ORG_TP_STATEchaid = 3.
END IF.

/* Node 4 */.
DO IF (SYSMIS(ORG_TP_STATE) OR VALUE(ORG_TP_STATE) NE 2  AND  VALUE(ORG_TP_STATE) NE 3  AND  VALUE(ORG_TP_STATE) NE 1  AND  VALUE(ORG_TP_STATE) NE 5).
COMPUTE ORG_TP_STATEchaid = 4.
END IF.

* Задаем уровень измерения переменных.
VARIABLE LEVEL 
AGEchaid (NOMINAL)
CHILD_TOTALchaid (NOMINAL)
PERSONAL_INCOMEchaid (NOMINAL)
TERMchaid (NOMINAL)
FST_PAYMENTchaid (NOMINAL)
FACT_LIVING_TERMchaid (NOMINAL)
WORK_TIMEchaid (NOMINAL)
LOAN_NUM_PAYMchaid (NOMINAL)
LOAN_DLQ_NUMchaid (NOMINAL)
LOAN_MAX_DLQ_AMTchaid (NOMINAL)
LOAN_NUM_TOTALchaid (NOMINAL)
LOAN_NUM_CLOSEDchaid (NOMINAL)
CREDITchaid (NOMINAL)
EDUCATIONchaid (NOMINAL)
GEN_INDUSTRYchaid (NOMINAL)
GEN_TITLEchaid (NOMINAL)
JOB_DIRchaid (NOMINAL)
FAMILY_INCOMEchaid (NOMINAL)
REGION_NMchaid (NOMINAL)
MARITAL_STATUSchaid (NOMINAL)
ORG_TP_STATEchaid (NOMINAL).

* Задаем метки переменных.
VARIABLE LABELS 
AGEchaid ‘Возраст клиента (CHAID 3, 500, 250)’
CHILD_TOTALchaid ‘Количество детей клиента (CHAID 3, 500, 250)’
PERSONAL_INCOMEchaid ‘Личный доход клиента (CHAID 3, 500, 250)’
TERMchaid ‘Срок кредита (CHAID 3, 500, 250)’
FST_PAYMENTchaid ‘Первоначальный взнос (CHAID 3, 60, 30, 5)’
FACT_LIVING_TERMchaid ‘Количество месяцев проживания по месту фактического пребывания (CHAID 3, 500, 250, 5)’
WORK_TIMEchaid ‘Время работы на текущем месте (CHAID 3, 500, 250, 5)’
LOAN_NUM_PAYMchaid ‘Количество платежей, которые сделал клиент (CHAID 3, 5000, 2500)’
LOAN_DLQ_NUMchaid ‘Количество просрочек, допущенных клиентом (CHAID 3, 500, 250)’
LOAN_MAX_DLQ_AMTchaid ‘Максимальная сумма просрочки (CHAID 3, 500, 250)’
LOAN_NUM_TOTALchaid ‘Количество ссуд клиента (CHAID 3, 500, 250)’
LOAN_NUM_CLOSEDchaid ‘Количество погашенных ссуд клиента (CHAID 3, 500, 250)’
CREDITchaid ‘Сумма последнего кредита (CHAID 3, 100, 50)’
EDUCATIONchaid ‘Образование (CHAID 3, 500, 250)’
GEN_INDUSTRYchaid ‘Отрасль работы клиента (CHAID 3, 500, 250)’
GEN_TITLEchaid ‘Должность (CHAID 3, 500, 250)’
JOB_DIRchaid ‘Направление деятельности внутри компании (CHAID 3, 500, 250)’
FAMILY_INCOMEchaid ‘Семейный доход (CHAID 3, 500, 250)’
REGION_NMchaid ‘Регион РФ (CHAID 3, 500, 250)’
MARITAL_STATUSchaid ‘Семейное положение (CHAID 3, 500, 250)’
ORG_TP_STATEchaid ‘Форма собственности компании (CHAID 3, 500, 250)’.

* Задаем метки значений переменных.
VALUE LABELS  
AGEchaid
1 'моложе 29 лет' 
2 'от 29 до 43 лет'
3 'от 44 до 52 лет' 
4 'от 53 до 57 лет'
5 'старше 57 лет'. 

VALUE LABELS
CHILD_TOTALchaid
1 '1 ребенок' 
2 '2 ребенка и больше'.

VALUE LABELS  
PERSONAL_INCOMEchaid
1 'менее 7900' 
2 'от 7900 до 11900'
3 'от 11900 до 14000' 
4 'от 14000 до 24800'
5 'более 24800'.

VALUE LABELS  
TERMchaid
1 '5 лет и меньше' 
2 '6 лет'
3 'от 7 до 11 лет' 
4 '12 лет и больше'.

VALUE LABELS  
FST_PAYMENTchaid
1 'менее 1500' 
2 'от 1500 до 4995'
3 'более 4995'.

VALUE LABELS  
FACT_LIVING_TERMchaid
1 'менее 82' 
2 'от 82 до 227'
3 'больше 227'.

VALUE LABELS  
WORK_TIMEchaid
1 'менее 19' 
2 'от 19 до 36'
3 'от 37 до 76'
4 'больше 76'.

VALUE LABELS  
LOAN_NUM_PAYMchaid
1 '10 и меньше' 
2 'больше 10'.

VALUE LABELS  
LOAN_DLQ_NUMchaid
1 'нет просрочек' 
2 '1 просрочка и более'.

VALUE LABELS  
LOAN_MAX_DLQ_AMTchaid
1 'нет данных о максимальной сумме просрочки' 
2 'есть данные о максимальной сумме просрочки'.

VALUE LABELS  
LOAN_NUM_TOTALchaid
1 '1 ссуда' 
2 '2 ссуды и более'.

VALUE LABELS  
LOAN_NUM_CLOSEDchaid
1 'нет погашенных ссуд' 
2 '1 погашенная ссуда'
3 '2 погашенных ссуды и более'.

VALUE LABELS  
CREDITchaid
1 'менее 7292' 
2 'от 7293 от 9427'
3 'от 9428 до 14169' 
4 'от 14170 от 27449'
5 'более 27449'.

VALUE LABELS  
EDUCATIONchaid
1 'неполн среднее, среднее, среднее спец' 
2 'неоконч высшее'
3 'высшее или несколько высших'.

VALUE LABELS  
GEN_INDUSTRYchaid
1 'обр-ние, металлургия, госслужба, здравоохр, строит-во,с/х,СМИ, тур' 
2 'рестораны/питан, развлеч, торг, трансп-т, недвиж-ть, упр. компания'
3 'банки, финансы, нефтегаз пром-ть, комм. хоз-во, химия/фарм, IT'
4 'HR, страхован, юр. услуги, маркетинг, пропуск'
5 'наука, энергетика'.

VALUE LABELS  
GEN_TITLEchaid
1 'рабочий, служащий, работник сферы услуг, высоквалиф. спец-т' 
2 'специалист, рук-ль средн. звена, другое'
3 'пропуск'
4 'военнослуж, ИП, рук-ль высш. звена, рук-ль низш. звена, партнер'.

VALUE LABELS  
JOB_DIRchaid
1 'участие в осн. деят-ти, СБ, бух, финансы, кадры, секрет, тех перс' 
2 'снабжен и сбыт, юр. служба, реклама и маркетинг'
3 'пропуск'.

VALUE LABELS  
FAMILY_INCOMEchaid
1 'до 10000 рублей' 
2 'от 10000 до 20000 рублей'
3 'от 20000 до 50000 рублей'
4 'свыше 50000 рублей'.

VALUE LABELS  
REGION_NMchaid
1 'Дальневост, Зап-Сиб, Сев-Зап, Вост-Сиб, Урал' 
2 'Поволжский, Центральный 2, Центральный 1, Южный'
3 'Центральный'
4 'Приволжский'.

VALUE LABELS  
MARITAL_STATUSchaid
1 'не состоял в браке' 
2 'состою в браке, вдовец/вдова'
3 'разведен, гражданский брак'.

VALUE LABELS  
ORG_TP_STATEchaid
1 'гос. комп./учреж.' 
2 'ИП, частн. компания с иностр. капиталом'
3 'пропуск'
4 'частн. компания, некомм. орг-ция'.

EXECUTE.

* Применяем модели логистической регрессии, построенные на обучающем наборе, к тестовому набору.
MODEL HANDLE NAME=VAR00001_model FILE='C:\Trees\Конкурс ОТП Банк\Модель логистической регрессии (исходные предикторы).xml'
  /OPTIONS MISSING=SUBSTITUTE.
COMPUTE SelectedProbability1=APPLYMODEL(VAR00001_model, 'PROBABILITY', 1).
EXECUTE.
MODEL CLOSE NAME=VAR00001_model.
MODEL HANDLE NAME=VAR00002_model FILE='C:\Trees\Конкурс ОТП Банк\Модель логистической регрессии (предикторы, преобразованные с помощью CHAID).xml'
  /OPTIONS MISSING=SUBSTITUTE. 
COMPUTE SelectedProbability2=APPLYMODEL(VAR00002_model, 'PROBABILITY', 1).
EXECUTE.
MODEL CLOSE NAME=VAR00002_model.

VARIABLE LABELS 
SelectedProbability1 ‘Модель логистической регрессии (исходные предикторы)’
SelectedProbability2 ‘Модель логистической регрессии (предикторы, преобразованные с помощью CHAID)’.

* Строим ROC-кривые моделей логистической регрессии для тестового набора.
ROC SelectedProbability1 SelectedProbability2 BY TARGET (1)
  /PLOT=CURVE(REFERENCE) 
  /PRINT=SE.