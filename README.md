# 🛒 E-Commerce Sales Funnel Analysis

> Sales funnel analysis and dashboard exploring conversion rates, customer journey timing, revenue performance, and acquisition channel performance for an e-commerce business.

---

## 📋 Project Summary

| | Details |
|-----------|---------|
| **Project Type** | Data Analytics |
| **Tools** | SQL, Tableau |
| **Database** | MySQL |
| **Dataset** | User Events Dataset |
| **Focus** | Sales Funnel Analysis, Dashboard Development |
| **Output** | Tableau Dashboard & Business Insights |

## 📌 Business Problem

This project was a simulated real-world e-commerce business scenario using user event data to analyze the customer journey through the sales funnel to better understand user behavior, identify drop-off points, and provide actionable insights to improve conversion rates, sales performance, and business returns.


## 🎯 Objectives

This project provides analysis of business metrics, sales funnel performance, and conversion timing at each stage from initial website visits to completed purchases. It also compares conversion performance across traffic sources.

It provides the sales and marketing teams with clear visibility into their KPIs, enabling them to identify conversion bottlenecks, evaluate marketing channel effectiveness, and uncover opportunities to improve revenue growth and customer acquisition strategies.

---

## 🔎 Dataset
The dataset provided by Lore So What (YouTube channel)

| Dataset      | Description       |
| ------------ | ----------------- |
| User Events | User interactions capturing the end-to-end customer journey |


## 🛠️ Tools

* SQL

  **SQL Techniques Used**
  
  * **`CTEs`** and **`CASE WHEN`** to define funnel stages.
  * **`COUNT (DISTINCT)`** to count users.
  * Use date functions like **`DATE_SUB()`**, **`DATE()`**, and **`MAX()`** to filter the latest 30 days of activity, and **`TIMESTAMPDIFF()`** to calculate the average time users spend between funnel stages.
  * Utilizes aggregate functions **`COUNT()`**, **`SUM()`**, **`AVG()`**  to calculate KPI, conversion metrics, and **`MIN()`** to capture the first timestamp at each funnel stage for conversion timing analysis.
  
* Tableau


## 🔄 Project Workflow

1. Data Understanding
2. Data Cleaning
3. Exploratory Data Analysis (EDA)
4. Data Transformation
5. Data Visualization
6. Business Insights

---

## 📊 Dashboard / Analysis

Built a two-page dashboard to visualize funnel performance and key business metrics.

* Overview page: An overview of KPIs, conversion funnel performance, and average time between funnel stages.
* Conversion Funnel by Traffic Source page: Sales funnel comparing conversion rates across traffic sources.

[View Dashboard](https://public.tableau.com/views/Book1_17814571393870/Overview?:language=en-US&:sid=&:redirect=auth&:display_count=n&:origin=viz_share_link)

<div class='tableauPlaceholder' id='viz1782773184310' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Bo&#47;Book1_17814571393870&#47;Overview&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Book1_17814571393870&#47;Overview' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Bo&#47;Book1_17814571393870&#47;Overview&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='th-TH' /></object></div>                


<div class='tableauPlaceholder' id='viz1782773075567' style='position: relative'><noscript><a href='#'><img alt=' ' src='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Bo&#47;Book1_17814571393870&#47;FunnelbyTrafficSource&#47;1_rss.png' style='border: none' /></a></noscript><object class='tableauViz'  style='display:none;'><param name='host_url' value='https%3A%2F%2Fpublic.tableau.com%2F' /> <param name='embed_code_version' value='3' /> <param name='site_root' value='' /><param name='name' value='Book1_17814571393870&#47;FunnelbyTrafficSource' /><param name='tabs' value='yes' /><param name='toolbar' value='yes' /><param name='static_image' value='https:&#47;&#47;public.tableau.com&#47;static&#47;images&#47;Bo&#47;Book1_17814571393870&#47;FunnelbyTrafficSource&#47;1.png' /> <param name='animate_transition' value='yes' /><param name='display_static_image' value='yes' /><param name='display_spinner' value='yes' /><param name='display_overlay' value='yes' /><param name='display_count' value='yes' /><param name='language' value='th-TH' /></object></div>                


## 📈 Key Insights

**My analysis proved the following:**

1. Revenue Funnel
* The website's overall sales performance is approximately **$76,000** for the most recent 30-day period. Customers spend around **$107** per order.
* Revenue per visitor **$17.76** is much lower than revenue per buyer **$107.46**, indicating that even small increases in conversion rate could considerably improve total revenue without necessarily requiring an increase in traffic volume.
  
2. Conversion Rates
* The **Payment to Purchase** conversion rate reached **92%**, indicating the payment process is functioning effectively.
* The lowest conversion rate occurs between the **Page View and Add-to-Cart** stages, where only **31.18%** of visitors add items to their cart, and many visitors leave the website before expressing purchase intent.
  
3. Time to Conversion
* The full conversion journey averages **24.56 minutes**, with the View-to-Cart stage taking the longest at 11.21 minutes.
* Once users add items to their cart, the remaining steps are completed relatively quickly.
  
4. Marketing Channel
* **Email has the most effective conversion performance of 33.85%**, as email campaigns reach users with high purchase intent, reflected in its strong cart conversion rate of 63.03%. While Organic traffic has the most visitors, it converts at a lower rate than email.
* **Social Media has the lowest conversion rate at 6.66%**, with a significant drop-off at the View-to-Cart stage. Most visitors come in and aren't interested in the product enough to add to cart.


## 💼 Recommendations

1. Website Optimization
* **Improve Product Discovery and Evaluation Experience:** The **Page View to Add-to-Cart** shows both the largest drop-off point and the longest average time spent.  

  **Action:** Improve product discovery, product content quality, and page engagement to help users find relevant products more easily and encourage more visitors to add items to their cart and increase conversion rate.
    
2. Marketing Channel Strategy
* **Increase Focus on Email Marketing:** Email is the highest-performing, attracts highly qualified traffic.

  **Action:** Increase focus on email marketing campaigns and expand email capture initiatives, such as newsletter sign-ups, promotional offers, and remarketing campaigns, to attract and retain high-intent customers.

* **Improve Social Media Traffic Quality:** Social Media has the lowest conversion rate and experiences substantial drop-off at the View-to-Cart stage.

  **Action:** Review audience targeting, content relevance, and landing page experience to improve traffic quality and increase conversion performance.
     
3. **Revenue Growth Strategy**
* **Improve Conversion Rates:** Purchasing customers already spend a relatively high amount.

  **Action:** Convert more existing visitors into buyers by reducing drop-off at the View-to-Cart stage rather than focusing only on increasing customer spending.
     
---

## 📂 Project Structure

```text
e-commerce-sales-funnel-analysis/
│
├── SQL script/
├── dashboard/
├── dataset/
└── README.md
```


## 💡 Key Learnings

* SQL querying
* Data Cleaning
* Dashboard Design
* Business Analysis

This project taught me that SQL is only a tool for extracting and analyzing data. The real value comes from transforming data into actionable business insights and recommendations.


## 🔮 Future Improvements

* Add more data
* Improve dashboard interactivity
  
If I were to extend this project, I would include Customer Acquisition Cost (CAC) and Return on Ad Spend (ROAS) to better evaluate marketing efficiency across channels.

My advice for doing a similar project is to focus on both technical skills (SQL and dashboard development) and business understanding, as meaningful insights come from combining the two.


## 🙏 Acknowledgment

Special thanks to the creator of **Lore So What (YouTube)** for sharing these resources for educational and portfolio purposes.

### References
**Lore So What** – [Watch me Do a Data Analyst Project in minutes with SQL (YouTube)](https://youtu.be/U-JlXWDqvco?si=AXzeUCWsxUb3NBXH)
