<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>DevOpsFlix | CI/CD in Action</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;600;700;900&display=swap" rel="stylesheet">

    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Inter', sans-serif;
        }

        body {
            background: radial-gradient(circle at top, #111 0%, #000 60%);
            color: #fff;
            min-height: 100vh;
            overflow-x: hidden;
        }

        /* ===== NAVBAR ===== */
        header {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 25px 60px;
        }

        .logo {
            font-size: 28px;
            font-weight: 900;
            color: #e50914;
            letter-spacing: 1px;
        }

        .sign-in {
            background: #e50914;
            padding: 10px 22px;
            border-radius: 6px;
            text-decoration: none;
            color: #fff;
            font-weight: 600;
            transition: all 0.3s ease;
        }

        .sign-in:hover {
            background: #ff1f2a;
            transform: scale(1.05);
        }

        /* ===== HERO ===== */
        .hero {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 120px 60px;
        }

        .hero-content {
            max-width: 800px;
        }

        .hero h1 {
            font-size: 64px;
            font-weight: 900;
            line-height: 1.1;
            margin-bottom: 25px;
        }

        .hero h1 span {
            color: #e50914;
        }

        .hero p {
            font-size: 20px;
            color: #ccc;
            margin-bottom: 35px;
            max-width: 650px;
        }

        .tags {
            display: flex;
            gap: 15px;
            margin-bottom: 45px;
            flex-wrap: wrap;
        }

        .tag {
            padding: 8px 18px;
            border-radius: 20px;
            background: rgba(255,255,255,0.08);
            font-size: 14px;
            border: 1px solid rgba(255,255,255,0.15);
        }

        /* ===== EMAIL BOX ===== */
        .email-box {
            display: flex;
            max-width: 550px;
            background: rgba(255,255,255,0.08);
            backdrop-filter: blur(12px);
            border-radius: 8px;
            overflow: hidden;
            border: 1px solid rgba(255,255,255,0.15);
        }

        .email-box input {
            flex: 1;
            padding: 18px;
            font-size: 16px;
            border: none;
            outline: none;
            background: transparent;
            color: #fff;
        }

        .email-box input::placeholder {
            color: #aaa;
        }

        .email-box button {
            background: linear-gradient(135deg, #e50914, #ff2c2c);
            border: none;
            padding: 0 30px;
            font-size: 16px;
            font-weight: 700;
            color: #fff;
            cursor: pointer;
            transition: all 0.3s ease;
        }

        .email-box button:hover {
            filter: brightness(1.1);
            transform: translateX(2px);
        }

        /* ===== FOOTER TEXT ===== */
        .footer-note {
            margin-top: 30px;
            font-size: 14px;
            color: #888;
        }

        /* ===== RESPONSIVE ===== */
        @media (max-width: 768px) {
            header {
                padding: 20px 30px;
            }

            .hero {
                padding: 80px 30px;
            }

            .hero h1 {
                font-size: 42px;
            }
        }
    </style>
</head>

<body>

<header>
    <div class="logo">DevOpsFlix</div>
    <a href="login.jsp" class="sign-in">Sign In</a>
</header>

<section class="hero">
    <div class="hero-content">

        <h1>
            Unlimited <span>Deployments</span>,<br>
            DevOps & CI/CD
        </h1>

        <p>
            Build. Test. Deploy. Monitor.  
            Experience a real-world CI/CD pipeline powered by Jenkins, Docker & Cloud.
        </p>

        <div class="tags">
            <div class="tag">Jenkins</div>
            <div class="tag">Docker</div>
            <div class="tag">Linux</div>
            <div class="tag">CI/CD</div>
            <div class="tag">Cloud</div>
        </div>

        <form action="signup.jsp" method="post" class="email-box">
            <input type="email" name="email" placeholder="Enter your email to start" required>
            <button type="submit">Get Started</button>
        </form>

        <div class="footer-note">
            Built by <strong>Mid-hxn07</strong> • Real DevOps. No Fake Pipelines 🚀
        </div>

    </div>
</section>

</body>
</html>
