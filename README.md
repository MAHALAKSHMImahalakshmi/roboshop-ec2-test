
# 🤖 roboshop-ec2-test: Using the EC2 Module in Real Projects

Welcome to **roboshop-ec2-test**!  
This is my **project-specific repository** created to test and deploy EC2 instances using my **reusable module from [`terraform-aws-instance`](https://github.com/your-username/terraform-aws-instance)** 🛠️

Follow along as I connect modules, tackle real-world errors, and automate AWS infrastructure like a DevOps engineer! 🚀

---

## 🚦 Steps I Followed

### 1️⃣ Set Up Provider & Backend
- Added AWS **provider configuration** only in this repo (not inside the module).
- Each project might have **different AWS credentials, regions, and remote backends**, so provider setup stays outside the module.

### 2️⃣ Parameterize Everything!
- Created variables for:
  - `sg_ids` (Security Group IDs)
  - `tags` (EC2 metadata)
  - `instance_type`, etc.
- Used **default values** where possible, but allowed **custom overrides** for project flexibility.

### 3️⃣ Call the Module
```hcl
module "ec2_instance" {
  source        = "../terraform-aws-instance"
  sg_ids        = var.sg_ids
  tags          = var.tags
  ami_id        = var.ami_id
  instance_type = var.instance_type
}
````

* Pointed to the `terraform-aws-instance` module.
* Passed project-specific variable values from this repo.

### 4️⃣ Debug, Debug, Debug 🐞

* Faced issues like:

  * Missing required variables
  * Misaligned names or wrong types
* Solved with careful review of `variables.tf` in the module and `terraform plan`.

### 5️⃣ Outputs for Integration

* Exposed useful outputs:

  * Public IP
  * Private IP
  * EC2 instance ID
* Helpful for automation tools, health checks, and connecting to other resources.

---

## 🚧 Errors & Confusions Faced

| 🛑 Problem                        | 💡 Lesson                                                           |
| --------------------------------- | ------------------------------------------------------------------- |
| Placed provider inside the module | ❌ Don’t do this! Always configure AWS provider in the project repo. |
| `git` commit history conflict     | Resolved using `git pull origin main --allow-unrelated-histories`   |
| Wrong variable names or types     | ✅ Match the exact variable names/types used in the module.          |

---

## 🌈 Real-World Lessons

* **Modules + Projects = Reusability + Flexibility** 💡
* Validate variables early to catch issues fast.
* Always run:

  ```bash
  terraform plan
  ```

  before:

  ```bash
  terraform apply
  ```
* **Outputs help** with automation, diagnostics, and further integrations.

---

## 🔗 Linked Repos

🧩 **This project uses the module from**:
[`terraform-aws-instance`](https://github.com/your-username/terraform-aws-instance)

📦 **That module is reusable** across multiple projects!
Just pass different variables — no need to re-code EC2 logic again.

---

## ☑️ Quick Usage Steps

1. Clone this repo:

   ```bash
   git clone https://github.com/your-username/roboshop-ec2-test.git
   cd roboshop-ec2-test
   ```

2. Configure AWS credentials:

   ```bash
   aws configure
   ```

3. Update `terraform.tfvars` or variable values in your config:

   * `sg_ids`
   * `tags`
   * `ami_id` optional
   * `instance_type` optional 

4. Run:

   ```bash
   terraform init
   terraform plan
   terraform apply
   ```

5. View Outputs:

   * EC2 Public IP
   * Instance ID
   * Private IP (if needed)



