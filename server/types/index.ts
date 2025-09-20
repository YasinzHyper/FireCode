// Export all types from problem.d.ts and user.d.ts for proper importing

export type ProblemData = CodeData & DescriptionData;

export interface Problem {
    main: ProblemData;
    editorial: EditorialData;
    test: any[][];
    function_name: string;
}

export interface CodeData {
    code_default_language: string;
    code_body: Record<string, string>;
    testcases?: TestCase[];
}

export interface DescriptionData {
    id: number;
    name: string;
    difficulty: "hard" | "medium" | "easy";
    like_count: number;
    dislike_count: number;
    topics: string[];
    companies: string[];
    acceptance_percentage: number;
    acceptance_rate_count: number; // Added for sorting by acceptance rate
    description: string;
    hint?: string;
    constraints?: string;
    examples?: Example[];
    status?: "attempted" | "solved"; // Added for dynamic status tracking
}

export interface TestCase {
    input: string;
    output: string;
}

export interface Example {
    input: string;
    output: string;
    explanation?: string;
}

export interface EditorialData {
    video_id?: string;
    article?: string;
}

export interface Submission {
    problem_name: string;
    status:
        | "Accepted"
        | "Runtime Error"
        | "Wrong Answer"
        | "Time Limit Exceeded";
    error?: string;
    runtime: number;
    memory: number;
    language: "JavaScript";
    time: Date;
    code_body?: string;
    input?: string;
    expected_output?: string;
    user_output?: string;
}

export type Sort = "asc" | "des" | "";

// User types
export interface IUser {
    _id?: string;
    username: string;
    email: string;
    password: string;
    joined: Date;
    submissions: Submission[];
    problems_solved: number[];
    problems_attempted: number[];
}

export interface DUser extends Document {
    _id?: string;
    username: string;
    email: string;
    password: string;
    joined: Date;
    submissions: Submission[];
    problems_solved: number[];
    problems_attempted: number[];
}