<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Path Planning for Differential Drive Robot</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 20px;
            background-color: #f4f4f4;
            color: #333;
        }

        h1, h2, h3 {
            color: #007acc;
        }

        pre {
            background-color: #eee;
            padding: 15px;
            border-radius: 5px;
            overflow-x: auto;
        }

        a {
            color: #007acc;
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        .container {
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .section {
            margin-bottom: 20px;
        }
    </style>
</head>

<body>
    <div class="container">
        <h1>Path Planning for Differential Drive Mobile Robot Using Q-Learning</h1>

        <div class="section">
            <h2>Overview</h2>
            <p>This repository implements Q-learning for autonomous path planning of a differential drive mobile robot in Simulink. The robot navigates efficiently from a start point to a target while avoiding obstacles.</p>
        </div>

        <div class="section">
            <h2>Features</h2>
            <ul>
                <li><strong>Q-Learning Algorithm:</strong> Reinforcement learning for path optimization.</li>
                <li><strong>Differential Drive Robot Model:</strong> Simulink implementation.</li>
                <li><strong>Obstacle Avoidance:</strong> Dynamic path adjustment.</li>
                <li><strong>Customizable Environment:</strong> Modify simulation parameters.</li>
            </ul>
        </div>

        <div class="section">
            <h2>Getting Started</h2>
            <h3>Prerequisites</h3>
            <ul>
                <li>MATLAB (R2021a or later)</li>
                <li>Simulink</li>
                <li>Reinforcement Learning Toolbox (optional)</li>
            </ul>

            <h3>Installation</h3>
            <pre><code>git clone https://github.com/yourusername/q-learning-path-planning.git</code></pre>
            <p>Open <code>robot_model.slx</code> in Simulink and run <code>run_simulation.m</code>.</p>
        </div>

        <div class="section">
            <h2>Usage</h2>
            <p>Modify the Q-learning parameters in <code>q_learning_params.m</code> and run the training script. You can test the pre-trained policy in various environments.</p>
        </div>

        <div class="section">
            <h2>File Structure</h2>
            <ul>
                <li><code>robot_model.slx</code> – Simulink model of the robot.</li>
                <li><code>q_learning_params.m</code> – Configuration file.</li>
                <li><code>run_simulation.m</code> – Simulation script.</li>
                <li><code>README.md</code> – Documentation.</li>
            </ul>
        </div>

        <div class="section">
            <h2>Results</h2>
            <p>The robot learns to navigate efficiently after multiple episodes, improving path optimization and avoiding obstacles.</p>
        </div>

        <div class="section">
            <h2>Contributions</h2>
            <p>Contributions are welcome! Fork the repository and submit a pull request.</p>
        </div>

        <div class="section">
            <h2>License</h2>
            <p>This project is licensed under the MIT License. See the <code>LICENSE</code> file for details.</p>
        </div>

        <div class="section">
            <h2>Contact</h2>
            <p>For questions, contact <a href="mailto:your.email@example.com">your.email@example.com</a>.</p>
        </div>
    </div>
</body>

</html>

