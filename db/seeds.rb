# db/seeds.rb

# Clear existing data
Project.destroy_all
Skill.destroy_all

# seeds.rb

projects = [
  {
    title: "Portfolio",
    description: "You are here! This portfolio was created using Next.js, Tailwind CSS, and TypeScript. The goal of this project was to create a portfolio that was easy to maintain and update. I also wanted to learn Next.js and Tailwind CSS.",
    tech: ["React", "Next.js", "TypeScript", "Tailwind CSS"],
    image: "/images/test.png",
    link: "",
    github: "https://github.com/Sunnyhundal/Portfolio"
  },
  {
    title: "Blanc Canvas",
    description: "Blanc Canvas was created as a graduation project for Lighthouse Labs Full-stack Web Development Bootcamp. The web app is a portfolio-based social marketplace designed to connect artists and those seeking art-related services and products.",
    tech: ["React", "Javascript", "Tailwind CSS", "Express", "Supabase"],
    image: "/images/test.png",
    link: "",
    github: "https://github.com/Sunnyhundal/Blanc-Canvas"
  },
  {
    title: "PhotoLabs",
    description: "The PhotoLabs project for the Web Development React course programming. The project is a basic web application allowing users to share photos.",
    tech: ["React", "Node.js", "Express", "PostgresSQL", "Bootstrap"],
    image: "photolabs.jpg",
    link: "",
    github: "https://github.com/Sunnyhundal/Photolabs"
  },
  {
    title: "Bargin Bazzar",
    description: "A Marketplace application designed to help connect buyers and sellers.",
    tech: ["Node.js", "EJS", "Express.js", "HTML", "SCSS", "PostgresSQL"],
    image: "/images/test.png",
    link: "",
    github: "https://github.com/Sunnyhundal/Bargin-Bazzar"
  },
  {
    title: "Tweeter",
    description: "Tweeter is a simple, single-page Twitter clone. This project was designed to demonstrate HTML, CSS, JS, jQuery, AJAX front-end skills, and Node Express back-end skills.",
    tech: ["AJAX", "CSS", "JavaScript", "Jquery", "HTML", "Node.js" , "Express.js"],
    image: "/images/test.png",
    link: "",
    github: "https://github.com/Sunnyhundal/tweeter"
  },
  {
    title: "TinyApp",
    description: "TinyApp is a full-stack web application built with Node and Express that allows users to shorten long URLs. The goal of this project is to build a multipage application that helps demonstrate: user authentication, logged-in states, and demonstrate the ability to perform CRUD operations on entries.",
    tech: ["EJS", "Node.js", "JavaScript", "express.js", "HTML", "CSS" , "Bcrypt", "Cookie-session","Bootstrap"],
    image: "/images/test.png",
    link: "",
    github: "https://github.com/Sunnyhundal/tinyapp"
  }
]

 skills = [
    {
      name: "HTML",
      simpleicon: "html5",
      area: "Frontend",
    },
    {
      name: "CSS",
      simpleicon: "css3",
      area: "Frontend",
    },
    {
      name: "JavaScript",
      simpleicon: "javascript",
      area: "Frontend",
    },
    {
      name: "TypeScript",
      simpleicon: "typescript",
      area: "Frontend",
    },
    {
      name: "React",
      simpleicon: "react",
      area: "Frontend",
    },
    {
      name: "Next.js",
      simpleicon: "nextdotjs",
      area: "Frontend",
    },
    {
      name: "Node.js",
      simpleicon: "nextdotjs",
      area: "Backend",
    },
    {
      name: "Express",
      simpleicon: "express",
      area: "Backend",
    },
    {
      name: "MongoDB",
      simpleicon: "mongodb",
      area: "Backend",
    },
    {
      name: "Git",
      simpleicon: "git",
      area: "Tools",
    },
    {
      name: "GitHub",
      simpleicon: "github",
      area: "Tools",
    },
    {
      name: "VSCode",
      simpleicon: "visualstudiocode",
      area: "Tools",
    },
    {
      name: "PostgreSQL",
      simpleicon: "postgresql",
      area: "Backend",
    },
    {
      name: "Supabase",
      simpleicon: "supabase",
      area: "Backend",
    },
    {
      name: "Tailwind CSS",
      simpleicon: "tailwindcss",
      area: "Frontend",
    },
    {
      name: "jest",
      simpleicon: "jest",
      area: "Tools",
    },
    {
      name: "cypress",
      simpleicon: "cypress",
      area: "Tools",

    },
    {
      name: "Bootstrap",
      simpleicon: "bootstrap",
      area: "Frontend",
    },
    {
      name: "rails",
      simpleicon: "rubyonrails",
      area: "Backend",
    },
    {
      name: "Ruby",
      simpleicon: "ruby",
      area: "Backend",
    },
    {
      name: "Mocha",
      simpleicon: "mocha",
      area: "Tools",
    },
    {
       name: "Chai",
        simpleicon: "chai",
        area: "Tools",
    },
];


projects.each do |project|
  Project.create!(
    name: project[:title],
    description: project[:description],
    tech: project[:tech].join(", "),
    image: project[:image],
    link: project[:link],
    github: project[:github]
  )
end

skills = [
  {
    name: "Next.js",
    simpleicon: "nextdotjs",
    area: "Frontend",
  },
  {
    name: "Node.js",
    simpleicon: "nextdotjs",
    area: "Backend",
  },
  {
    name: "Express",
    simpleicon: "express",
    area: "Backend",
  },
  {
    name: "MongoDB",
    simpleicon: "mongodb",
    area: "Backend",
  },
  {
    name: "Git",
    simpleicon: "git",
    area: "Tools",
  },
  {
    name: "GitHub",
    simpleicon: "github",
    area: "Tools",
  },
  {
    name: "VSCode",
    simpleicon: "visualstudiocode",
    area: "Tools",
  },
  {
    name: "PostgreSQL",
    simpleicon: "postgresql",
    area: "Backend",
  },
  {
    name: "Supabase",
    simpleicon: "supabase",
    area: "Backend",
  },
  {
    name: "Tailwind CSS",
    simpleicon: "tailwindcss",
    area: "Frontend",
  },
  {
    name: "jest",
    simpleicon: "jest",
    area: "Tools",
  },
  {
    name: "cypress",
    simpleicon: "cypress",
    area: "Tools",
  },
  {
    name: "Bootstrap",
    simpleicon: "bootstrap",
    area: "Frontend",
  },
  {
    name: "rails",
    simpleicon: "rubyonrails",
    area: "Backend",
  },
  {
    name: "Ruby",
    simpleicon: "ruby",
    area: "Backend",
  },
  {
    name: "Mocha",
    simpleicon: "mocha",
    area: "Tools",
  },
  {
    name: "Chai",
    simpleicon: "chai",
    area: "Tools",
  }
]

skills.each do |skill|
  Skill.create!(
    name: skill[:name],
    simpleicon: skill[:simpleicon],
    area: skill[:area]
  )
end
