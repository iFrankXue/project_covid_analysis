-- Check the connection

SELECT 
    location,
    date,
    total_cases,
    new_cases,
    total_deaths,
    population
FROM CovidDeaths
ORDER BY 1, 2;



-- Looking at the Total Cases vs Total Deaths
-- Shows likelihood of dying if you contract covid in your country

SELECT 
    location,
date,
    total_cases,
    total_deaths,
    (total_deaths/total_cases)*100 as DeathPercentage
FROM CovidDeaths
WHERE location LIKE '%states%'
ORDER BY  1, 2



-- Looking at Total Cases vs Population



