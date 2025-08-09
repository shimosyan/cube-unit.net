# cube-unit.net

同人サークル「Cube-Unit」の公式ウェブサイトのソースコードです。

## 🎵 About Cube-Unit

楽曲製作を主とする同人サークルです。オリジナル楽曲の制作・配信、音楽イベントへの参加などを行っています。

**公式サイト**: <https://cube-unit.net/>

## 🏗️ Architecture

### Frontend

- **Static Site Generator**: [Hugo](https://gohugo.io/)
- **Theme**: Custom theme `cube-unit`
- **Styling**: Custom CSS (PC/Mobile responsive)
- **JavaScript**: jQuery-based interactions

### Infrastructure

- **DNS & CDN**: Cloudflare (DNS resolution + edge caching)
- **Hosting**: AWS CloudFront + S3
- **Secondary CDN**: CloudFront with custom functions
- **Asset Domain**: img.cube-unit.net
- **IaC**: Terraform

### CI/CD

- **GitHub Actions**: Automated deployment
- **tfaction**: Terraform workflow management
- **Environment**: Production environment with approval gates

## 📁 Project Structure

```plaintext
├── web/                          # Hugo site source
│   ├── hugo.toml                 # Hugo configuration
│   ├── content/                  # Markdown content
│   ├── themes/cube-unit/         # Custom theme
│   └── static/                   # Static assets
├── terraform/                    # Infrastructure as Code
│   ├── aws/
│   │   ├── cube-unit.net/        # Main site infrastructure
│   │   ├── img.cube-unit.net/    # Asset domain infrastructure
│   │   └── static.cube-unit.net/ # Static webpage domain
│   └── cloudflare/
│       ├── cube-unit.net/
│       │   └── dns/              # Dns records of current domain
│       └── micmnis.net/
│           └── dns/              # Dns records of old domain
└── .github/workflows/            # CI/CD pipelines
```

## 🚀 Development

### Prerequisites

- [aqua](https://aquaproj.github.io/) - CLI version manager
- [Hugo](https://gohugo.io/) - Deployment and Development tools
- AWS CLI (for deployment)

### Setup

1: Install tools via aqua:

```bash
aqua install
```

2: Start Hugo development server:

```bash
cd web
hugo server
```

3: Access local site: <http://localhost:1313>

### Content Management

- **News**: Add markdown files to `web/content/news/`
- **Products**: Add markdown files to `web/content/product/`
- **Pages**: Edit existing markdown files in `web/content/`

### Theme Customization

Custom theme is located in `web/themes/cube-unit/`:

- `layouts/`: HTML templates
- `static/css/`: Stylesheets (PC/Mobile)
- `static/js/`: JavaScript files
- `static/img/`: Theme images

## 🌐 Deployment

### Automatic Deployment

- **Trigger**: Push to `main` branch
- **Target**: Production environment (cube-unit.net)
- **Process**: Hugo build → S3 sync → CloudFront invalidation

### Manual Deployment

```bash
# Build site
cd web
hugo --minify

# Deploy to S3 (requires AWS credentials)
aws s3 sync public/ s3://cube-unit.net --delete
```

## 🔧 Infrastructure

### Data Flow

```plaintext
User Request
    ↓
Cloudflare (DNS + Edge Cache)
    ↓
AWS CloudFront (Secondary CDN)
    ↓
CloudFront Functions (URL Rewriting/Redirects)
    ↓
Amazon S3 (Static Files)
```

**Request Flow Details:**

1. **DNS + Edge Cache**: Cloudflare resolves domain and provides first-layer caching
2. **Secondary CDN**: CloudFront handles additional caching and SSL termination
3. **Function Layer**: CloudFront Functions process URL rewriting and redirects
4. **Origin**: S3 bucket serves static files with OAC (Origin Access Control)

### Domains

- **cube-unit.net**: Main website
- **img.cube-unit.net**: Image assets and redirects
- **static.cube-unit.net**: Static webpage & file hosting

### CloudFront Functions

- **URL Rewriting**: Hugo-style clean URLs
- **Asset Redirects**: Legacy WordPress asset handling
- **Error Handling**: Custom 404 pages

### Security

- **S3 Bucket Policy**: CloudFront-only access
- **SSL/TLS**: ACM certificates
- **IAM Roles**: Least privilege access

### CDN Strategy

**Dual CDN Architecture:**

- **Cloudflare (Layer 1)**: Global edge caching and DDoS protection
- **CloudFront (Layer 2)**: AWS-native CDN with custom functions

**Benefits:**

- **Performance**: Multi-layer caching reduces origin load
- **Reliability**: Redundant CDN layers improve availability
- **Security**: Cloudflare provides DDoS protection and WAF
- **Flexibility**: CloudFront Functions enable custom logic

## 📱 Features

- **Responsive Design**: PC/Mobile optimized layouts
- **Product Showcase**: Music releases and works
- **News System**: Announcements and updates
- **Social Integration**: SNS sharing buttons
- **Analytics**: Google Analytics 4
- **SEO Optimized**: Meta tags, structured data

## 🛠️ Development History

- **2025**: WordPress → Hugo migration

## 📝 License

This project is proprietary software of Cube-Unit. All rights reserved.

## 👥 Contributors

- **shimosyan** - Infrastructure & Development

---

💫 Made with ❤️ by Cube-Unit
